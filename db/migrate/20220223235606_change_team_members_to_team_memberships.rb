class ChangeTeamMembersToTeamMemberships < ActiveRecord::Migration[7.0]
  def change
    rename_table :team_members, :team_memberships
  end
end
