class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :current_user

  def after_sign_in_path_for(resource)
    spots_path
  end
end
