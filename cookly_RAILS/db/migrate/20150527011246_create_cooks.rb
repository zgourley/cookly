class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.string :cook_name
      t.string :string
      t.string :location
      t.string :string
      t.string :cuisine
      t.string :string
      t.string :specialty
      t.string :text

      t.timestamps null: false
    end
  end
end
