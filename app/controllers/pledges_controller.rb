class PledgesController < ApplicationController

	def create
		@pledge = @project.pledges.build(pledge_params)
		@pledge.user = current_user

		respond_to do |format|
			if @pledge.save
				format.html { redirect_to project_path(@project_id), notice: 'Pledge added.'}
				format.js {}
			else
				format.html { render 'projects/show', alert: 'There was an error.' }
			end
		end
	end

	private
	def pledge_params
		params.require(:pledge).permit(:dollar_amount, :project_id)
	end
end
