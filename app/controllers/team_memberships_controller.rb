class TeamMembershipsController < ApplicationController
  def create
    team_membership = TeamMembership.create!(
      team_id: params['team_membership']['teamId'],
      user_id: params['team_membership']['userId'],
      is_leader: true
    )
    if team_membership
      render json: {
               status: :created,
               teamId: :team_id,
               userId: :user_id,
               isLeader: :is_leader
             }
    else
      render json: { status: 500 }
    end
  end
end
