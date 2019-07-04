class VisitorMailer < ApplicationMailer
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    sleep 20

    mail(from: @email,
         to: "rodrigo+reyes@mailinator.com",
         subject: "New Visitor's Email")
  end
end
