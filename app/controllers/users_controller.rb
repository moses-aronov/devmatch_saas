class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :only_current_user
    
    def show
        @user = User.find(params[:id]) #Look at rake routes, the new param is id
        @profile = @user.profile
    end
end