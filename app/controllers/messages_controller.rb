class MessagesController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/lists/#{comment.company.id}/company"
  end


  private
  def comment_params
    params.require(:comment).permit(:company_id, :gender, :tel_mail, :estimate, :operator, :service, :title, :text).merge(company_id: params[:list_id])
  end

end
