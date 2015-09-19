class ArticlesController < ApplicationController
  before_action :sign_in_required, only: [:new]
  before_action :sign_in_required, only: [:search]
  def index
  end

  def new
    @article = Article.new
    @user = current_user
  end
  
  def create
    company_id = Company.find_by_name(params[:company].to_s)
    if company_id.blank?
      company_id = Company.create(:name => params[:company].to_s).id
    end
    
    @article = Article.create(:note => params[:article][:note], :type => params[:type],
      :user_id => params[:article][:user_id], :company_id => company_id)
      
    reps = params[:representative].split(',')
    reps.each do |rep|
      person = CompanyPerson.find_by_name(rep.to_s)
      if person.blank?
        CompanyPerson.create(:name => rep.to_s, :company_id => company_id)
      end
    end
      
  end
  
  def search
    @q        = Article.search(params[:q])
    @articles = @q.result(distinct: true)
    
  end
end
