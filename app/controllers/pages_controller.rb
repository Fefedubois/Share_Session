class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :admin ]

  def home
  end

  def about
  end

end
