class BooksController < ApplicationController
  def new
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def create
  	@book = Book.new(book_params)
  	if @book.save
  		flash[:success] = "The registration is finished successfully"
  		redirect_to @book
  	else
  		render 'new'
  	end
  end

  def index 
  	@books = Book.all
  end

  private

  	def book_params
  		params.require(:book).permit(:name, :number, :lendable)
  	end
end
