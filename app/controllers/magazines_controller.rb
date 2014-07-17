class MagazinesController < ApplicationController

  def index
    @magazines = Magazine.all
  end
  
  def show
    @magazine = Magazine.find(params[:id])
  end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_params)
    if @magazine.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  private

  def magazine_params
    params.require(:magazine).permit(:name)
  end

end

