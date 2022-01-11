class CreateOrder < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :order_date
      t.date :shipping_date
      t.integer :cost
    end
  end
end
