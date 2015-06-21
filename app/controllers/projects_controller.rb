class ProjectsController < ApplicationController

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to project_path(@project), notice: "Your project has been succesfully published under the #{project.category} category."
    else
      flash.alert = "Your project could not be saved. Please make sure you have filled in all the required fields."
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
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
    params.require(:project).permit(:user_id, :title, :description, :category_id, :pay, :pay_type)
  end

end