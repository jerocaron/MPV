class BikesController < ApplicationController
  def index
    @bikes = Bike.where.not(latitude: nil, longitude: nil)

    @markers = @bikes.map do |bike|
      {
        lng: bike.longitude,
        lat: bike.latitude
      }
    end
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.profil = current_user.profil
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
  end

  def show
    @bike = Bike.find(params[:id])
  end

private
  def bike_params
    params.require(:bike).permit(:marque, :category, :description, :address, :zipcode, :age, :photo)
  end
end
