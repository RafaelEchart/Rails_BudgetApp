class CreateEntities < ActiveRecord::Migration[7.0]
    def change
      create_table :entities do |t|
        t.belongs_to :user, foreign_key: true
        t.string :name
        t.decimal :amount, precision: 10, scale: 2
        t.timestamps
      end
    end
  end