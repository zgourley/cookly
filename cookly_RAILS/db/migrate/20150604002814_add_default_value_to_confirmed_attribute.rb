class AddDefaultValueToConfirmedAttribute < ActiveRecord::Migration
  def change
    change_column :meals, :confirmed, :boolean, :default => true
  end
end
