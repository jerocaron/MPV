class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @bikes = Bike.all

    @markers = @bikes.map do |bike|
      {
        lng: bike.longitude,
        lat: bike.latitude
      }
    end
  end
end
