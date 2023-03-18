class CommentsController < ApplicationController
  before_action :set_project

  def create
    @comment = @project.comments.create(comment_params)
    redirect_to project_path(@project)
  end

  def destroy
    @comment = @project.comments.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
