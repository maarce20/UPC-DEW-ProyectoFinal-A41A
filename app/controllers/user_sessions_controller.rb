class UserSessionsController < ApplicationController
	def new
    @user = User.new
  end
  
  def create
    respond_to do |format|
      if @user = login(params[:email],params[:password])
        format.html { redirect_back_or_to(:users, :notice => 'Login successful.') }
        
      else
        format.html { flash.now[:alert] = "Login failed."; render :action => "new" }
        
      end
    end
  end
    
  def destroy
    logout
    redirect_to(:root, :notice => 'Logged out!')
  end
end
