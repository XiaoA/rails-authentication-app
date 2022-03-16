class CreateTeamMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :team_members do |t|
      t.belongs_to :user
      t.belongs_to :team
      t.boolean :is_leader

      t.timestamps
    end
  end
end
