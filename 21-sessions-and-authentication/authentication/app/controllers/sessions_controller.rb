class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])
    
    if user && user.authenticate(session_params[:password])
      flash[:notice] = 'Successfully logged in!'
      redirect_to root_url
    else
      flash.now[:alert] = 'Try again :('
      render :new
    end
    
  end

  def destroy
  end
  
  private
  
  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end
