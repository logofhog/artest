class PicturesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @context = context
    @picture = @context.pictures.new
  end

  def create
    @context = context
    @picture = context.pictures.new(picture_params)
    if @picture.save
      redirect_to @context
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

  def picture_params
    params.require(:picture).permit(:name)
  end

  def context
    if params[:book_id]
      Book.find(params[:book_id])
    else
      Magazine.find(params[:magazine_id])
    end
  end

end

