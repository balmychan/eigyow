class ArticlesController < ApplicationController
  before_action :sign_in_required, only: [:new]
  def index
  end

  def new
    @article = Article.new
    @user = "Test"
  end
  
  def create
    
  end
end
