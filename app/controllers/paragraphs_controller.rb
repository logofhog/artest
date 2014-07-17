class ParagraphsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @paragraph = Paragraph.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @chapter.paragraphs.new(paragraph_params)
    if @chapter.save
      redirect_to @chapter
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

  def paragraph_params
    params.require(:paragraph).permit(:number)
  end

end
