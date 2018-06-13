class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # it wants me to check the instance by creating a new
    @author = Author.new(author_params)

    # then save it
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
