class AddImageUrlToCooks < ActiveRecord::Migration
  def change
    add_column :cooks, :cook_image, :string
  end
end
