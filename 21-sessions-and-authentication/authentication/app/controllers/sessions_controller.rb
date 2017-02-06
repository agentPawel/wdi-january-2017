class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    
    if user && user.authenticate(session_params[:password])
      flash[:notice] = 'Successfully logged in!'
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:alert] = 'Try again :('
      render :new
    end
    
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You're logged out!"
    redirect_to root_url
  end
  
  private
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end

# params
# flash
# session
