class CreateSakayas < ActiveRecord::Migration
  def change
    create_table :sakayas do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.boolean :is_public
      t.integer :capacity
      t.datetime :date
      t.integer :stock

      t.timestamps null: false
    end
  end
end
