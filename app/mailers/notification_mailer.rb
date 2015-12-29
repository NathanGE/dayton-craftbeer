class NotificationMailer < ActionMailer::Base
  default from: "no-reply@dayton-craftbeer.herokuapp.com"
  def comment_added
    mail(to: "nathangelliott@gmail.com", subject: "A comment has been added to the place you created on Dayton-Craftbeer.herokuapp.com.")
  end
end
