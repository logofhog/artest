class ChaptersController < ApplicationController
  def index
    @book = params[:book]
    @chapters = @book.chapter
  end

  def show
    puts params, 'peraprepeparams'
    @chapter = Chapter.find(params[:id])
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.new(chapter_params)
    if @chapter.save
      redirect_to @book
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

  def chapter_params
    params.require(:chapter).permit(:name)
  end

end

