class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation'],
      username: params['user']['username']
    )
    if user
      session[:user_id] = user.id
      render json: {
               status: :created,
               username: user.username
             }
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
