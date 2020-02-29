class MessagesController < ApplicationController

  def new
    @companies = Company.find(params[:id])
    @comment = Comment.new
    @company = Company.new
  end

  def create
    @comment = Comment.create!(comment_params)
    if @comment.valid?
      binding.pry
      redirect_to "/lists/#{@comment.company.id}/company"
    else
      binding.pry
      render "new"
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:company_id, :age, :gender, :tel_mail, :estimate, :operator, :service, :title, :text).merge(company_id: params[:list_id])
  end

end
