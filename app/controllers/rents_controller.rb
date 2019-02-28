class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  def index
    @rents = Rent.all
  end

  def show
  end

  def create
    @rent = Rent.new(rent_params)
    @rent.profil = current_user.profil
    @rent.bike = Bike.find(params[:bike_id])
    if @rent.save
      redirect_to rent_path(@rent)
    else
      render :new
    end
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @rent = Rent.new
  end

  def edit
  end

  def update
    @rent.update(params[:rent])
  end

  def delete
    @rent.destroy
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end

  def rent_params
    params.require(:rent).permit(:start_date, :end_date)
  end
end
