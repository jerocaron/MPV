class ProfilsController < ApplicationController
  def new
    @profil = Profil.new
  end

  def show
    @profil = current_user.profil
  end

  def create
    @profil = Profil.new(profil_params)
    @profil.user = current_user
    if @profil.save
      redirect_to profil_path(@profil)
    else
      render :new
    end
  end

  def edit
    @profil = Profil.find(params[:id])
  end

  def show
    @profil = Profil.find(params[:id])
  end

  def update
    @profil = Profil.find(params[:id])
    @profil.update(profil_params)
    redirect_to profil_path(@profil)
  end

private
  def profil_params
    params.require(:profil).permit(:first_name, :last_name, :address, :photo, :tel, :iban )
  end
end
