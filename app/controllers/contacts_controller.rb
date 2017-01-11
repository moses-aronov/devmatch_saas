class ContactsController < ApplicationController
    #Actions have coresponding views
    def new
        #Creates a blank contact object
        #It is used in the view
        @contact = Contact.new
    end
        
        
        #On submit
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            
            #:contact is the form
            #:value is the field 
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comments]
            
            ContactMailer.contact_email(name, email, body).deliver
            
            flash[:success] = "Message sent."
            redirect_to new_contact_path
        else
            flash[:danger] = "Error occured, message has not been sent."
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        
        end
    
    
end