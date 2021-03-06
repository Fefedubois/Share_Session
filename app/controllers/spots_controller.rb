class SpotsController < ApplicationController
  before_action :set_spot, only: %i[ show edit update destroy ]

  skip_before_action :verify_authenticity_token

  # GET /spots or /spots.json
  def index

    if params[:query].present?
      @spots = Spot.search_by_name_and_adresse(params[:query])

       @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spot: spot }),
        image_url: helpers.asset_url("vague.png")
      }
    end


    else
    @spots = current_user.spots

    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spot: spot }),
        image_url: helpers.asset_url("vague.png")
      }
      end
    end
  end

  # GET /spots/1 or /spots/1.json
  def show
        @markers = [{
      lat: @spot.latitude,
      lng: @spot.longitude,
      info_window: render_to_string(partial: "info_window", locals: { spot: @spot }),
      image_url: helpers.asset_url("vague.png")
      }
    ]
  end

  # GET /spots/new
  def new
    if user_signed_in?
      @spot = Spot.new
    else
      redirect_to new_user_registration_path
    end
  end

  # GET /spots/1/edit
  def edit
  end

  # POST /spots or /spots.json
  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user

    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new
    end
  end


  # PATCH/PUT /spots/1 or /spots/1.json
  def update
    respond_to do |format|
      if @spot.update(spot_params)
        format.html { redirect_to spot_url(@spot), notice: "Ton Spot a bien été mis-à-jour!" }
        format.json { render :show, status: :ok, location: @spot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spots/1 or /spots/1.json
  def destroy
    @spot.destroy

    respond_to do |format|
      format.html { redirect_to spots_url, notice: "Le spot a bien été supprimé." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot
      @spot = Spot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spot_params
      params.require(:spot).permit(:name, :country, :adresse, :publish_date, :best_tide, :best_wind, :latitude, :longitude, :note, :user_id, :description, :image, :periode, :meilleure_taille, :houle )
    end
end
