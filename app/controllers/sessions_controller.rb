class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(params[:users][:email], params[:users][:password])

    if user
      log_in_user!(user)
      redirect_to user_url(user)
    else
      flash.now[:errors] = "Incorrect Email/Password."
      render :new
    end
  end

  def new
    render :new
  end

  def destroy
    log_out_user!
    redirect_to new_session_url
  end

end
