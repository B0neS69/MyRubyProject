class AddFieldsToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :category, :string
    #add_column :products, :description, :text
    #add_column :products, :price, :decimal
    add_column :products, :image, :string
  end
end
