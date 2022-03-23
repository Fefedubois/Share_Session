class FavorisController < ApplicationController
  def index
    @user = current_user
    @favoris = Favori.where(user: @user)
  end

  def create
    @spot = Spot.find(params[:spot_id])
    if @spot.user_id != current_user.id   #You can register favorites other than your own spots
      @favori = Favori.create(user_id: current_user.id, spot_id: @spot.id)
    end
  end

  def destroy
    @favori = Favori.find(params[:id])
    @favori.destroy
    redirect_to user_favoris_path(current_user)
  end
end
