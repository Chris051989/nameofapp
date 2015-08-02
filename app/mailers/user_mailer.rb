class UserMailer < ActionMailer::Base
  default from: "surf@hawaianboards.com"

  def contact_form(email, name, message)
	@message = message
  	mail(
  		:from => email, 
	  	:to => 'christoph.schenek@googlemail.com', 
	  	:subject => "A new contact form message from #{name}"
	  	)
  end

end
