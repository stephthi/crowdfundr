class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_url
    end
  end

  def show
  	@project = Project.find(params[:id])
  	@comment = Comment.new(user: current_user, project: @project)
  end

	private
	def project_params
		params.require(:project).permit(:title, :description, :funding_target, :start_date, :end_date)
  end
end
