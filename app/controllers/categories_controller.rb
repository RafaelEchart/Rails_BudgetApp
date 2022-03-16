class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def show 
    end

    def new 
        @category = Group.new
    end

    def post 
    
    end

end