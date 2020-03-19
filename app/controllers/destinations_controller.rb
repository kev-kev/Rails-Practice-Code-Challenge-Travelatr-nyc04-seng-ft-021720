class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params)
    if @destination.save
      redirect_to destination_path(@destination)
    else
      flash[:errors] = @destination.errors.full_messages
      redirect_to new_destination_path
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to destinations_path
  end

  private 

    def destination_params
      params.require(:destination).permit(:name)
    end
end
