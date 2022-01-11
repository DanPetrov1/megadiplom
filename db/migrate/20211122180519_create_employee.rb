class CreateEmployee < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :birthday
      t.string :phone
    end
  end
end
