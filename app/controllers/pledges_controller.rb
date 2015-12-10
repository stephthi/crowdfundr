class PledgesController < ApplicationController

# before_action :load_project, only: [:create]
# before_action :load_pledge, only: [:show, :destroy, :edit, :update]

	def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user

    if @pledge.save
      redirect_to project_path(@pledge.project), notice: "Thank you for the cool pledge"
    else
      render new_pledge_path, notice: 'Something went wrong!'
    end
  end
	# def create
	# 	@pledge = @project.pledges.build(pledge_params)
	# 	@pledge.user = current_user

	# 	respond_to do |format|
	# 		if @pledge.save
	# 			format.html { redirect_to project_path(@project_id), notice: 'Pledge added.'}
	# 			format.js {}
	# 		else
	# 			format.html { render 'projects/show', alert: 'There was an error.' }
	# 		end
	# 	end
	# end

	def new
		@pledge = Pledge.new
	end

	def index
		@pledges = Pledge.all
	end

	private
		def pledge_params
			params.require(:pledge).permit(:dollar_amount, :project_id)
		end

	# 	def load_project
	#     @project = Project.find(params[:project_id])
	#   end

	#   def load_pledge
	#     @pledge = Pledge.find(params[:id])
	#   end
	# end
end
