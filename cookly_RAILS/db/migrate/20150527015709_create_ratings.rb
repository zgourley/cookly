class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :star
      t.text :comment
      t.references :cook, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
