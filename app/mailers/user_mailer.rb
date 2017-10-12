class UserMailer < ApplicationMailer
  default from: 'notifications@vcun.com'
 
    def welcome_email(user)
      @user = user
      @url  = 'http://localhost:3000'
      mail(to: @user.email, subject: 'Bienvenido a Virtual Classroom UN')
    end
end
