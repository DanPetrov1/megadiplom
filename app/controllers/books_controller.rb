class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    render json: Book.find(params[:id])
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
end
