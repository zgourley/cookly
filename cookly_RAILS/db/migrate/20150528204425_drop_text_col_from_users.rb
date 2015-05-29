class DropTextColFromUsers < ActiveRecord::Migration
  def change
    remove_column :cooks, :text
  end
end
