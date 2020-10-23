class Challenge < ApplicationRecord
  belongs_to :contest
  has_many :solves
end
