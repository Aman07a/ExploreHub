class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @destinations = @tag.destinations
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to tag_path(@tag), notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  private

  def tag_params
    params.require(:tag).permit(:title, :image)
  end
end
