class DropRatingsTable < ActiveRecord::Migration
  def change
    drop_table :ratings
  end
end
