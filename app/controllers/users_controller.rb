class UsersController < ApplicationController

  def create
    @user = User.new(
    email: params[:users][:email],
    password: params[:users][:password])

    if @user.save!
      log_in_user!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    render :show
  end

  def new
    render :new
  end

end
