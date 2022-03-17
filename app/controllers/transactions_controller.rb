class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
  
    @category = Category.find(params[:category_id])
    

  end

  def create; end
end
