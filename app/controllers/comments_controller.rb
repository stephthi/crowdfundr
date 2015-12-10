class CommentsController < ApplicationController

	before_filter :ensure_logged_in , only: [:create, :destroy]
	before_filter :load_project

	def show
		@comment = Comment.find(params[:id])
	end

	def create
		@comment = @project.comments.build(comment_params)
		@comment.user = current_user

		if @comment.save
			redirect_to project_url(@project), notice: "Your comment has been saved"
		else
			render 'projects/show'
		end


	end

	def destroy
		@comment = Comment.find(params[:id])
		if @comment.present?
			@comment.destroy
		end
		redirect_to projects_url, notice: "Your comment has been deleted."
	end

	private

		def comment_params
			params.require(:comment).permit(:user_id, :comment_id, :body_text, :project_id)
		end

		def load_project
			@project = Project.find(params[:project_id])
		end
end
