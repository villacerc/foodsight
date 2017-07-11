class UsersController < ApplicationController
  add_breadcrumb "Home", :home_path
  add_breadcrumb "Discuss", :topics_path

  layout "topics"

  def new
    @user = User.new
    add_breadcrumb "Sign Up", :new_user_path
  end

  def create
    @user = User.new user_params

    if @user.save
        session[:user_id] = @user.id
        redirect_to topics_path
    else
        render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
