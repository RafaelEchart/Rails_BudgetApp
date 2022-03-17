class CreateActivityCategories  < ActiveRecord::Migration[7.0]
    def change
      create_table :entity_categories do |t|
      t.timestamps

      end

    add_reference :entity_categories, :entity, foreign_key: true
    add_reference :entity_categories, :category, foregn_key: true
    end
  end