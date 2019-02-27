class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bikes = Bike.where.not(latitude: nil, longitude: nil)

    @markers = @bikes.map do |bike|
      {
        lng: bike.longitude,
        lat: bike.latitude
      }
    end

    p @markers
  end
end
