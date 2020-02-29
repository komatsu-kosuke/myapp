class MessagesController < ApplicationController

  def create
    @companies = Company.find_by(params[:id])
    @comment = Comment.create(comment_params)
    unless @comment.valid?
      render template: "lists/kuchikomi"
    else
      redirect_to "/lists/#{@comment.company.id}/company"
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:company_id, :age, :gender, :tel_mail, :estimate, :operator, :service, :title, :text).merge(company_id: params[:list_id])
  end

end
