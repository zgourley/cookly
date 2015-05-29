class AddDescToCooks < ActiveRecord::Migration
  def change
    add_column :cooks, :description, :text
  end
end
