class AddConfirmedToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :confirmed, :boolean
  end
end
