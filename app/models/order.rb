class Order < ApplicationRecord
  has_many :books
  has_and_belongs_to_many :books
  belongs_to :payment_method
  belongs_to :pickup_point
  belongs_to :user


  before_create do
    self.order_date = Date.today
    self.shipping_date = Date.today
    self.cost = books.map { |q| q.cost.to_i }.sum
  end
end
