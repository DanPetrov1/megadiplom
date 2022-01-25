class BasketsService
  def initialize(session)
    @session = session
  end

  def add(id)
    product = Book.find(id)

    products = if $redis_basket.exists?(@session[:token])
                 JSON.parse($redis_basket.get(@session[:token]))
               else
                 []
               end

    products << product
    $redis_basket.set(@session[:token], products.to_json)
  end

  def remove(id)
    product = Book.find(id)
    products = JSON.parse($redis_basket.get(@session[:token]))

    products.delete_at(products.index(product.as_json)) if products.include?(product.as_json)
    $redis_basket.set(@session[:token], products.to_json)
  end

  def all
    JSON.parse($redis_basket.get(@session[:token])) if $redis_basket.exists?(@session[:token])
  end

  def clear
    $redis_basket.del(@session[:token])
  end

  def size
    return 0 unless $redis_basket.exists?(@session[:token])
    products = JSON.parse($redis_basket.get(@session[:token]))
    @size = products.length
  end

  def sum
    products = JSON.parse($redis_basket.get(@session[:token]))
    sum = 0
    products.each { |x| sum += x['cost'].to_i }
    sum
  end

  attr_reader :session
end
