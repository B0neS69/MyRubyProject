class AddProductReferenceToOrders < ActiveRecord::Migration[7.2]
  def change
    add_reference :orders, :product, foreign_key: { on_delete: :cascade }
  end
end
