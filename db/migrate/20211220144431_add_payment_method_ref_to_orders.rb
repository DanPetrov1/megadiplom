class AddPaymentMethodRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :payment_method, foreign_key: true
  end
end
