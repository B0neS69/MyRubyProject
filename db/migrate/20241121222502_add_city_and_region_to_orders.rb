class AddCityAndRegionToOrders < ActiveRecord::Migration[7.2]
  def change
    add_column :orders, :city, :string
    add_column :orders, :region, :string
  end
end
