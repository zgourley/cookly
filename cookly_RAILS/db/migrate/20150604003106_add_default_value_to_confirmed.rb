class AddDefaultValueToConfirmed < ActiveRecord::Migration
  def change
    change_column :meals, :confirmed, :boolean, :default => false
  end
end
