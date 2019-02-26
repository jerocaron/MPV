class ProfilsController < ApplicationController
  def new
    @profil = Profil.new
  end

  def create
    raise
    @profil = Profil.new(profil_params)
    @profil.profil_id =
    if @profil.save
      redirect_to bike_path(@profil)
    else
      render :new
    end
  end

  def show
    @profil = Profil.find(params[:id])
  end

private
  def bike_params
    params.require(:profil).permit(:first_name, :last_name, :address, :zipcode, :email)
  end
end
