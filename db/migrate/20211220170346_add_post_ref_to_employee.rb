class AddPostRefToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :post, foreign_key: true
  end
end
