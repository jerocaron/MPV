class RentsController < ApplicationController
  before_action :set_rent, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @rents = Bike.find(params[:bike_id]).rents
  end

  def show
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @periods = @bike.rents.map { |rent| rent.period.split(' to ') }.uniq
    @rent = Rent.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @rent = Rent.new(rent_params)
    @rent.profil = current_user.profil
    @rent.bike = @bike
    if @rent.save
      redirect_to bike_rents_path(@rent)
    else
      render :new
    end
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
    params.require(:rent).permit(:period)
  end
end
