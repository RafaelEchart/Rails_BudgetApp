class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = current_user.categories.includes(entity_categories: :entity)
  end

  def new
    @category = Category.new
    @icons = [%w[Health medkit-outline], %w[Fun happy-outline], %w[Study book-outline],
              %w[Travel airplane-outline], %w[Gift gift-outline], %w[Personal person-outline]]
  end

  def post
    @category = Category.new(user_id: current_user.id, name: params[:category][:name], icon: params[:category][:icon])

    if @category.save
      flash[:success] = 'Category created successfully.'
    else
      p @category.errors.full_messages
      flash[:error] = 'Error creating Category.'
    end
    redirect_to categories_index_path
  end
end
