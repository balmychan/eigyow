class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
    @user = "Test"
  end
  
  def create
    
  end
end
