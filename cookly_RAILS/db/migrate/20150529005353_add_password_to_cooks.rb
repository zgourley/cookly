class AddPasswordToCooks < ActiveRecord::Migration
  def change
    add_column :cooks, :password_digest, :string
  end
end
