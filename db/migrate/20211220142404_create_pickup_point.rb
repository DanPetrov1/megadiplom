class CreatePickupPoint < ActiveRecord::Migration[5.2]
  def change
    create_table :pickup_points do |t|
      t.string :name
      t.string :address
      t.time :busy_hours
      t.string :phone
    end
  end
end
