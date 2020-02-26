class ListsController < ApplicationController

  def index
    @company = Company.all
    @comment = Comment.new
  end

  def search
    @company = Company.search(params[:keyword])
    @comment = Comment.new
  end
  
  def company
    @company = Company.find(params[:id])
    @comment = Comment.new
    @comments = @company.comments.order("created_at DESC")
    
  end

  def kuchikomi
    @companies = Company.find(params[:id])
    @comment = Comment.new
    @company = Company.new
  end

  

end
