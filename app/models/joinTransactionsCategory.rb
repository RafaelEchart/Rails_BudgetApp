class JoinTableGroupEntity < ApplicationRecord
    has_and_belongs_to_many :entities
    has_and_belongs_to_many :groups
  end
  