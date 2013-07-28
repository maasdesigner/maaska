class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@gmail.com"
  default :to => "maasgultekin@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[YourWebsite.tld] #{message.subject}")
  end

end