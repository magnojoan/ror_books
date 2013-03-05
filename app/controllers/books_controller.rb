class BooksController < ApplicationController
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def update
		@book = Book.find(params[:id])
		if !@book.update_attributes(params[:book])
			render :edit
		else
			redirect_to(books_path)
		end
	end


	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to(books_path)
	end

	def edit
		@book = Book.find(params[:id])
	end


	def create
			@book = Book.new(params[:book])

			if @book.save
				redirect_to books_path
			else
				render :new
			end

			#BRUTE FORCE MODE
			#  	@book = Book.new
			 #   @book.book_name = params[:book_name]
			  #  @book.author = params[:author]
			   # @book.published_at = Date.civil(params[:published_at][:year].to_i,
			    #                              params[:published_at][:month].to_i,
			     #                             params[:published_at][:day].to_i)
			    #@book.isbn_number = params[:isbn_number]
			    #@book.category = params[:category]
			    
			   # if @book.save
			    #	redirect_to books_path
				#else
				#	render :new
				#end
	end

	def show
    	@book = Book.find(params[:id])
	end

end