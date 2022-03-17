class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    id = params[:category_id]
    @category = Category.find(id)
    authorize_transaction(@category)


    @transactions = EntityCategory.where(category_id: id).order(created_at: :desc)
  end

  def create
    id = params[:category_id]
    @category = Category.find(id)
    authorize_transaction(@category)


    @transactions = Entity.new
  end

  def post
    @transaction = Entity.new(user_id: current_user.id, name: params[:entity][:name], amount: params[:entity][:amount])

    if @transaction.save
      @entity_category = EntityCategory.new(entity_id: @transaction.id, category_id: params[:category_id])
      @entity_category.save
      flash[:success] = 'Transaction created successfully.'

    else
      p @transaction.errors.full_messages
      flash[:error] = 'Error creating Transaction.'

    end
    redirect_to transactions_index_path(params[:category_id])
  end

  private

  def entity_category_params
    params.require(:entity).permit(:category_id)
  end

  def authorize_transaction(category)
    if(category.user_id != current_user.id)
      flash[:error] = 'You have no access to this data!'
      redirect_to categories_index_path
    end
  
  end



end
