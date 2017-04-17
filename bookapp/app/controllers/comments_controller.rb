class CommentsController < ApplicationController
	def create
		@comment = Comment.new(com_params)
		# @comment.book_id = params[:comment][:book_id]
		# @comment.nickname = params[:comment][:nickname]
		# @comment.comment = params[:comment][:comment]
		@comment.save
		redirect_to books_path(@comment.id)
	end

	private

		def com_params
				params.require(:comment).permit(:book_id, :nickname, :comment)
		end
end
