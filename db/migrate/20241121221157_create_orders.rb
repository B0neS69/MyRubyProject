class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.string :delivery_method
      t.string :payment_method

      t.timestamps
    end
  end
end
