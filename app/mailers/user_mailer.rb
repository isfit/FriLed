class UserMailer < ActionMailer::Base
 #  default :from => "from@example.com"

   default :from => "ryan@railscasts.com"

  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end


end
