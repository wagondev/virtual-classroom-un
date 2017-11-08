class UserMailer < ApplicationMailer
  default from: 'notifications@vcun.com'
 
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenido a Virtual Classroom UN.')
  end

  def group_created_email(user, group)
    @user = user
    @group = group
    mail(to: @user.email, subject: 'Creación exitosa de grupo.')
  end
  
  def free_group_created_email(user, team)
    @user = user
    @team = team
    mail(to: @user.email, subject: 'Creación exitosa de grupo libre.')
  end

end
