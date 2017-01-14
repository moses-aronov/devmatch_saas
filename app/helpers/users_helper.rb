module UsersHelper
    def job_title_icon
        if @profile.job_title == "Developer"
            "<i class='fa fa-code'></i>".html_safe
        elsif @profile.job_title == "Entreprenuer"
            "<i class='fa fa-lightbulb-o'></i>".html_safe
        elsif @profile.job_title == "Investor"
            "<i class='fa fa-dollar'></i>".html_safe
        else
            puts"error"
        end
        
        
    end
end