class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) #Look at rake routes, the new param is id
    end
end