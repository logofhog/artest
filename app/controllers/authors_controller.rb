class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    @sql = Author.all.to_sql
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(user_params)
    if @author.save
      redirect_to action: 'index'
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

  def user_params
    params.require(:author).permit(:name)
  end
end

