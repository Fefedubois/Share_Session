class UsersController < ApplicationController
   skip_before_action :verify_authenticity_token
  def edit
    @user = current_user
  end


end
