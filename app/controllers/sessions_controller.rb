class SessionsController < ApplicationController
  include CurrentUserConcern

  def create
    user = User
             .find_by(email: params["user"]["email"])
             .try(:authenticate, params["user"]["password"])

    if user
      session[:user_id] = user.id
      render json: {
               status: :created,
               logged_in: true,
               # user: user
               username: user.username,
               uuid: user.uuid
             }
    else
      render json: {
               status: 401,
               error: "There was a problem with your login. Please make sure your email and password are correct."
             }
    end
  end

  def logged_in
    if @current_user
      render json: {
               logged_in: true,
               user: @current_user
             }
    else
      render json: {
               logged_in: false
             }
    end

    def logout
      reset_session
      render json: {
               status: 200,
               logged_out: true
             }
    end
  end
end
