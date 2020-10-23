class Contest < ApplicationRecord
  has_many :challenges
  has_many :teams
  has_many :sponsors
  has_many :people
end
