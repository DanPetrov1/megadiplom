class CreatePaymentMethod < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_methods do |t|
      t.string :title
    end
  end
end
