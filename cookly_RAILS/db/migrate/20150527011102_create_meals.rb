class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :date
      t.time :time
      t.text :location
      t.text :info
      t.integer :price

      t.timestamps null: false
    end
  end
end
