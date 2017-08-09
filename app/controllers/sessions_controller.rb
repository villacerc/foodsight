class SessionsController < ApplicationController
  add_breadcrumb "Home", :home_path
  add_breadcrumb "Discuss", :topics_path
  layout "topics"

  def new
    add_breadcrumb "Sign In", :new_session_path
  end

  def create
    # we have the user's email & password from the params
    # 1. find the user by their email
    # 2. if found, we authenticate the user with the given password
    # 3. if not found, we alert the user with wrong credentials

    @user = User.find_by(email: params[:email])

    respond_to do |format|
      if @user&.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = "Sign in successul"
        format.js {render :success_login}
      else
        # `flash.now` makes the flash message available to the current request
        # as opposed to next request with just `flash`
        @error = "Invalid Credentials, please try again!"
        format.js {render :failed_login }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to request.referrer, notice: 'Sign out successful'
  end
end
