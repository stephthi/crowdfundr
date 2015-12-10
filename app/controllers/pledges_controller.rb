class PledgesController < ApplicationController

# before_action :load_project, only: [:create]
# before_action :load_pledge, only: [:show, :destroy, :edit, :update]

	def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user_id = current_user.id


    if @pledge.save
      redirect_to project_path(@pledge.project), notice: "Thank you for the generous pledge."
    else
      render new_pledge_path, notice: 'Something went wrong!'
    end
  end

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
