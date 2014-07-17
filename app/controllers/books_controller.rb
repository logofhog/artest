class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @author = Author.find(params[:author_id])
    @book = @author.books.new(book_params)
    if @book.save
      redirect_to :controller => 'authors', :action => 'index'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title)
  end

  def author_params
    params.require(:author).permit(:author_id)
  end
end

