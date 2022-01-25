class BasketsController < ApplicationController
  protect_from_forgery

  def index
    @books = basket.all
  end

  def create
    order = Order.new
    order.cost = basket.sum
    order.order_date = Date.today
    order.shipping_date = Date.today
    order.save
    OrderMailer.with(params: params.permit(:email, :address).merge(sum: basket.sum)).report.deliver_now
    # basket.clear
    # Parameters: {"first-name"=>"", "last-name"=>"", "email"=>"", "address"=>"", "city"=>"", "country"=>"", "zip-code"=>"", "tel"=>""}
    redirect_to root_path
  end
end
