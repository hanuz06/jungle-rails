class UserMailer < ApplicationMailer
  default from: 'junglerails2020@gmail.com'
 
  def confirm_email(order, user)
    @order = order
    @user = user
    @url = 'https://dashboard.heroku.com/apps/serene-anchorage-80884'
    mail(to: @user.email, subject: 'Order confirmation')
  end

end
