class ChangeOrdersToStoreProductDetails < ActiveRecord::Migration[7.2]
  def change
    # Залишаємо старі поля замовлення
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
    add_column :orders, :phone, :string
    add_column :orders, :email, :string
    add_column :orders, :address, :string
    add_column :orders, :city, :string
    add_column :orders, :region, :string
    add_column :orders, :delivery_method, :string
    add_column :orders, :payment_method, :string

    # Додаємо нові поля для зберігання продукту
    add_column :orders, :product_name, :string
    add_column :orders, :product_price, :decimal, precision: 10, scale: 2
    add_column :orders, :product_quantity, :integer

    # Видаляємо зовнішній ключ для продукту
    remove_reference :orders, :product, foreign_key: true
  end
end
