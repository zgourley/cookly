class DropStringColFromUsers < ActiveRecord::Migration
  def change
    remove_column :cooks, :string
  end
end
