class AddGenreRefToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :genre, foreign_key: true
  end
end
