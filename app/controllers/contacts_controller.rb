class ContactsController < ApplicationController
    #Actions have coresponding views
    def new
        #Creates a blank contact object
        #It is used in the view
        @contact = Contact.new
    end
    
    def create
    end
end