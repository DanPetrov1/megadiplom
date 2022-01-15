class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def quote
    # code for UberRUSH shipping quote
  end

  def order
    # code for Stripe charge and UberRUSH delivery creation
  end

  def done
    # code for confirmation page
  end

  def add_to_basket
    basket.add(params[:id])
    @books = Book.all
    render :index
  end

  def delete_from_basket
    basket.remove(params[:id])
    @books = Book.all
    render :index
  end
end
