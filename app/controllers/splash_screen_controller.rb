class SplashScreenController < ApplicationController

    def index

        if user_signed_in?
            redirect_to categories_index_path
        end

    end

end