class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)

    if @destination.save
      redirect_to destination_path(@destination), notice: 'Destination was successfully created.'
    else
      render :new
    end
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :image, :description, :tag_id)
  end
end
