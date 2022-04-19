ActiveAdmin.register Spot do
  #
  permit_params :user_id, :name, :country, :note, :photo, :periode, :best_tide, :houle, :best_wind, :meilleure_taille, :description, :localisation, :publish_date, :sous_name, :adresse, :latitude, :longitude
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :name, :country, :note, :photo, :periode, :best_tide, :houle, :best_wind, :meilleure_taille, :description, :localisation, :publish_date, :sous_name, :adresse, :latitude, :longitude]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
