class AddProductListToOrders < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :product_list, :string
  end
end
