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

	def show
  	@project = Project.find(params[:id])
    @pledge = @project.pledges.build
  	@comment = Comment.new(user: current_user, project: @project)



  end

	def new
		@project = Project.new
		@project.rewards.build
	end

  def create
    @project = Project.new(project_params)
    @project.owner_id = current_user.id

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

	private
	def project_params
		params.require(:project).permit(:title, :description, :funding_target, :start_date, :end_date,
			rewards_attributes: [:id, :name, :description, :min_dollar_amount, :quantity, :project_id, :_destroy])
  end
end
