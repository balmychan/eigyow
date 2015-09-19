class ArticlesController < ApplicationController
  before_action :sign_in_required, only: [:new]
  before_action :sign_in_required, only: [:search]
  def index
  end

  def new
    @article = Article.new
    @user = "Test"
  end
  
  def create
    
  end
  
  def search
    
  end
end
