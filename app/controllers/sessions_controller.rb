class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to cookies.delete(:requested_page) || root_path
    else
      flash.now[:alert] = 'Вы уже Гуру? Подтвердите свой емэйл и пароль'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
