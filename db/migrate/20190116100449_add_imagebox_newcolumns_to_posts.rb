class AddImageboxNewcolumnsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :purpose, :text
    add_column :posts, :type, :string
    add_column :posts, :image_2, :string
    add_column :posts, :image_3, :string
    add_column :posts, :image_2_name, :string
    add_column :posts, :image_3_name, :string
  end
end
