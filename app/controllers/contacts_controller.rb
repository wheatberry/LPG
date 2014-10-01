class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @feedback = "active"
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      contact_info = { :name => @contact.name, :email => @contact.email, :message => @contact.message }
      ContactMailer.contact_email(contact_info).deliver
      redirect_to root_path 
      flash[:notice] = "Message Sent!"
    else
      render 'new'
      flash.now[:notice] = "Failed to create contact"
    end
  end

	private
	 	def contact_params
			params.require(:contact).permit(:name, :email, :message)
	  end
end


