# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def welcome
    UserMailer.welcome_email(User.last)
  end

  def group_created
    UserMailer.group_created_email(User.last,StudentCreateGroup.last)
  end
    
end
