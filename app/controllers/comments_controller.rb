class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = Comment.new(params.require(:comment).permit(:content, :accepted))
    @comment.project = @project
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to project_path(@project), notice: "Your bid has been succesfully published below."
    else
      flash.alert = "Your bid could not be posted. Please make sure you filled in the required field."
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to user_path(@comment.user_id), notice: "Your comment has been deleted."
  end

end