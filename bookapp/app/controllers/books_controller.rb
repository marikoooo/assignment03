class BooksController < ApplicationController
	def new
		@book = Book.new
	end

	def index
		@books = Book.all
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to books_path(@book.id)
		else
			render 'new'
		end
	end

	def show
		@book = Book.find_by(params[:id])
		@comment = Comment.new


	end

	private

		def book_params
			params.require(:book).permit(:title, :price, :description, :rate)
		end


end
