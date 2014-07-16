class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    puts params[:author_id]
    @author = Author.find(params[:author_id])
    puts @author.inspect
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

