class TeamsController < ApplicationController
  def create
    team = Team.create!(
      team_name: params['team']['team_name']
    )
    if team
      render json: {
               status: :created,
               team: team
             }
    else
      render json: { status: 500 }
    end
  end
end
