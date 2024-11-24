class RemoveProductReferenceFromOrderItems < ActiveRecord::Migration[7.2]
  def change
    # Видаляємо зовнішній ключ, якщо він був створений
    remove_foreign_key :order_items, :products if foreign_key_exists?(:order_items, :products)

    # Видаляємо колонку product_id
    remove_column :order_items, :product_id, :integer
  end
end
