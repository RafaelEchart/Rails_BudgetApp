class SplashScreenController < ApplicationController
  def index
    redirect_to categories_index_path if user_signed_in?
  end
end
