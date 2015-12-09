class ProjectsController < ApplicationController

	def index
		if params[:title]
			@projects = Project.where("LOWER(title) LIKE LOWER(?)", "%#{params[:title]}%")
		else
			@projects = Project.all
		end

		respond_to do |format|
      format.html
      format.js
    end
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

	private
	def project_params
		params.require(:project).permit(:title, :description, :funding_target, :start_date, :end_date)
  end
end
