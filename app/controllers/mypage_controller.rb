class MypageController < ApplicationController
  def index
    @c_id = params[:c_id]
    if @c_id.nil?
        @c_name = "すべて"
        @articles = Article.where(user_id: current_user).order("created_at DESC").page(params[:page])
    else
        @c_name = Company.where(id: @c_id).first.name
        @articles = Article.where(user_id: current_user).where(company_id: @c_id).order("created_at DESC").page(params[:page])
    end
    
  end
end
