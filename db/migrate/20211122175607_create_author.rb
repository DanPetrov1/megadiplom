class CreateAuthor < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.date :birthday
      t.string :birthplace
    end
  end
end
