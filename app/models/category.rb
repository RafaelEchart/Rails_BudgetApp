class Category < ApplicationRecord
  # validation
  validates :name, presence: { message: 'Name can not be blank' }
  validates :icon, presence: { message: 'Icon can not be blank' }

  belongs_to :user
  has_many :entity_categories, foreign_key: :category_id


  def total_amount(array)
    total = 0
    array.each do |item|
      total += item.entity.amount
    end
    total
  end
  
end
