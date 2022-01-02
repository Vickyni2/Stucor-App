class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_regno(params[:regno])
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to(action: 'welcome')
     else
       flash.now[:alert] = "regno or password is invalid"
       render "new"
     end
   end
  
   def destroy
     session[:user_id] = nil
     redirect_to root_url, notice: "Logged out!"
   end

  def welcome
  end
end
