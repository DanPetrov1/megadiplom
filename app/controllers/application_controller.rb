class ApplicationController < ActionController::Base
  before_action :token
  before_action :basket

  def token
    @token ||= session[:token] || SecureRandom.hex(8)
    session[:token] = @token
  end

  def basket
    @basket ||= ::BasketsService.new(session)
  end
end
