class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to(books_path)
	end

	def create
			#@book = Book.new(params[:book])

			#if @book.save
			#	redirect_to books_path
			#else
			#	render :new
			#end

			  book = Book.new
			    book.book_name = params[:book_name]
			    book.author = params[:author]
			    book.published_at = Date.civil(params[:published_at][:year].to_i,
			                                  params[:published_at][:month].to_i,
			                                  params[:published_at][:day].to_i)
			    book.isbn_number = params[:isbn_number]
			    book.category = params[:category]
			    
			    book.save

			    redirect_to books_path

	end

	def show
    	@book = Book.find(params[:id])
	end

end