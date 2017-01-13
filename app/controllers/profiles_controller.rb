class ProfilesController < ApplicationController
    def new
        # form where user can fill out their own profile
        @user = User.find(params[:user_id])
        
        @profile = Profile.new
    end


    def create
        #Identify user
        @user = User.find(params[:user_id])
        #build_profile creates a blank profile, pass the form into the build
        @profile = @user.build_profile(profile_params)
        
        if @profile.save
            flash[:success] = "Profile Updated!"
            redirect_to user_path(params[:user_id])
        else
            render action: :new
        end
        
    end
    
    
    private
        def profile_params
            #whitelist the formfields that you are using
            params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
        end
        
    
end
