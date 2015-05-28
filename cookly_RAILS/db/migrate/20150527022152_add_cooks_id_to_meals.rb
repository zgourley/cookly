class AddCooksIdToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :cook, index: true, foreign_key: true
  end
end
