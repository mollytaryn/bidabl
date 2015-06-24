class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to project_path(@project), notice: "Your project has been succesfully published under the #{@project.category.name} category."
    else
      flash.alert = "Your project could not be saved. Please make sure you have filled in all the required fields."
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to user_path(@project.user_id), notice: "Your project has been deleted."
  end

  def show
    @project = Project.find(params[:id])
    @comments = @project.comments.all
    @comment = Comment.new
  end

  protected

  def load_project
    if params[:id].present?
      @project = Project.find(params[:id])
    else
      @project = Project.new
    end

    if params[:project].present?
      @project.assign_attributes(project_params)
    end
  end

  def project_params
    params.require(:project).permit(:user_id, :title, :description, :image, :category_id, :state_id, :city_id, :pay, :pay_type)
  end

end