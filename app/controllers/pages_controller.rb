class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:address].present?
      search
    else
      @bikes = Bike.all
      @bike = Bike.new
    end

    @markers = @bikes.map do |bike|
      {
        lng: bike.longitude,
        lat: bike.latitude
      }
    end
  end

  private

  def search
     @bike = Bike.new
     @bikes = Bike.where("address ILIKE ?", "%#{params[:address]}%")
  #   @distance = Geocoder::Calculations.distance_between([@performance.profile.latitude, @performance.profile.longitude], [current_user.profile.latitude, current_user.profile.longitude])
  end
end



# paris => 48.8529717 , 2.3477134,17
# lyon => 45.757811,4.8317562,15.82
# lille => 50.6286251,3.0474652,15.11

