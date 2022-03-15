class Group < ApplicationRecord
    # validation
    validates :name, presence: { message: 'Name can not be blank' }
    validates :icon, presence: { message: 'Icon can not be blank' }
  
    belongs_to :user
    has_and_belongs_to_many :entities
  end