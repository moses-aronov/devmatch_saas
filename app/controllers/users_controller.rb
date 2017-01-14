class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id]) #Look at rake routes, the new param is id
        @profile = @user.profile
    end
end