def user    
    @current_user ||= User.find(session[:user_id])
end