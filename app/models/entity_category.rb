class EntityCategory < ApplicationRecord
  belongs_to :entity
  belongs_to :category
end
