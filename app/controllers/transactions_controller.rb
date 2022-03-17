class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
  
    @category = Category.find(params[:category_id])
    

  end

  def create
  @transactions = Entity.new
  end

  def post
    p params[:entity][:name]
    p params[:entity][:amount]

    @transaction = Entity.new(user_id: current_user.id, name: params[:entity][:name], amount: params[:entity][:amount])
    
    if @transaction.save
      puts 'transaction created successfully.'
      # flash[:success] = 'Category created successfully.'
    else
      p @transaction.errors.full_messages
      # flash[:error] = 'Error creating Category.'
      p 'Error creating transactio.'
    end
    redirect_to categories_index_path

  end
end
