class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :phone
      t.string :email
    end
  end
end
