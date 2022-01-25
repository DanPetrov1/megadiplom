class OrderMailer < ApplicationMailer

  def report
    @params = params[:params]
    @sum = params["sum"]

    puts @sum
    puts @params

    mail(to: params["email"], subject: 'Successful order')
  end

end
