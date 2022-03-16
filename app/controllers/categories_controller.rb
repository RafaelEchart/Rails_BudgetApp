class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Group.where(user_id: current_user.id)
  end

  def new
    @category = Group.new
    @icons = [%w[Health medkit-outline], %w[Fun happy-outline], %w[Study book-outline],
              %w[Travel airplane-outline], %w[Gift gift-outline], %w[Personal person-outline]]
  end

  def post
    @category = Group.new(user_id: current_user.id, name: params[:group][:name], icon: params[:group][:icon])

    if @category.save
      flash[:success] = 'Category created successfully.'
    else
      p @category.errors.full_messages
      flash[:error] = 'Error creating Category.'
    end
    redirect_to categories_index_path
  end
end
