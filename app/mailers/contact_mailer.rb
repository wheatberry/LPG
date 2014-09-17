class ContactMailer < ActionMailer::Base
  default from: "3681gn@gmail.com"

  def contact_email(contact_info)
  	@name = contact_info[:name]
  	@email = contact_info[:email]
  	@message = contact_info[:message]
  	@url = new_contact_url

  	mail(:to => Rails.application.secrets.owner_email, :subject => "A Contact Us Message from: #{@name}", :body => @message)
  end
end



