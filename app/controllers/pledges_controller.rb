class PledgesController < ApplicationController

	def create
    @pledge = Pledge.new(pledge_params)
    @pledge.user = current_user
    @pledge.set_reward

    if @pledge.save
      redirect_to project_path(@pledge.project), notice: "Thank you for the generous pledge."
    else
      redirect_to project_path(@pledge.project), notice: 'Please add a pledge value.'
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

end
