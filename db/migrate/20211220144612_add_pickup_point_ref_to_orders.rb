class AddPickupPointRefToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :pickup_point, foreign_key: true
  end
end
