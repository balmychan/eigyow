class ArticlesController < ApplicationController
  before_action :sign_in_required, only: [:new]
  before_action :sign_in_required, only: [:search]
  before_filter :login_required
  
  autocomplete :company, :name, :full => true
  
  def index
    @q        = Article.search(params[:q])
    @articles = @q.result(distinct: true)
  end

  def new
    @article = Article.new
    @user = current_user
  end
  
  def create
    # ArticleコントローラーなのにArticle以外のモデルもいじってしまってるけど許して…
    company = Company.find_by_name(params[:company].to_s)
    if company.blank?
      company = Company.create(:name => params[:company].to_s)
    end
    
    company_id = company.id
    note = params[:article][:note]
    
    @article = Article.create(:note => note, :type => params[:type],
      :user_id => params[:article][:user_id], :company_id => company_id)
      
    reps = params[:representative].split(',')
    reps.each do |rep|
      person = CompanyPerson.find_by_name(rep.to_s)
      if person.blank?
        CompanyPerson.create(:name => rep.to_s, :company_id => company_id)
      end
    end
    
    note.each_line do |line|
      line.chomp!
      if line.first == '◎'
        line.slice!(0)
        ArticleKeyword.create(:keyword => line, :article_id => @article.id)
      elsif line.first == '☆'
        line.slice!(0)
        ArticleTodo.create(:todo => line, :article_id => @article.id)
      end
    end
    
    unless params[:proposals].blank?
      proposals = params[:proposals]
      proposals.each do |proposal|
        Proposal.create(:upload_file_name => proposal.original_filename, :upload_file => proposal.read, :article_id => @article.id)
      end
    end
    
    redirect_to mypage_index_url  
  end

  private
  def login_required
    unless user_signed_in?
      redirect_to new_user_session_url
    end
  end
end
