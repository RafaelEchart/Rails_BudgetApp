class CreateCategories < ActiveRecord::Migration[7.0]
    def change
      create_table :categories do |t|
        t.belongs_to :user, foreign_key: {to_table: :users}, index: true
        t.string :name
        t.string :icon
        t.timestamps
      end
    end
  end