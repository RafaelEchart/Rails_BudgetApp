class Entity < ApplicationRecord
  # validation
  validates :name, presence: { message: 'Name can not be empty' }
  validates :amount,
            numericality: { only_float: true, greater_than_or_equal_to: 0,
                            message: 'Amount should be greater or equal to 0' }

  belongs_to :user
  has_many :entity_categories, foreign_key: :entity_id




end
