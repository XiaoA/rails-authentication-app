class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params['user']['email'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation'],
      username: params['user']['username'],
      team_name: params['user']['team_name']
    )
    if user
      session[:user_id] = user.id
      render json: {
               status: :created,
               user: user
             }
    else
      render json: { status: 500 }
    end
  end
end
