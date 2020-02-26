class ListsController < ApplicationController

  def index
    @company = Company.all
    @comment = Comment.new
  end

  def search
    @company = Company.search(params[:keyword])
    @result = "「#{params[:keyword]}」の検索結果"
    if @company.present?
      @company = Company.search(params[:keyword])
      @result = "「#{params[:keyword]}」の検索結果"
    else 
      @company = Company.all
      @result = "検索ワードに一致するものが見つかりませんでした。全件表示します。"
    end
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
