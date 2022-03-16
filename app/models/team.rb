class Team < ApplicationRecord
  has_many :team_memberships
  has_many :users, :through => :team_memberships

  validates_presence_of :team_name
  validates_uniqueness_of :team_name
  
end
