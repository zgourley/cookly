class AddEmailToCooks < ActiveRecord::Migration
  def change
    add_column :cooks, :email, :string
  end
end
