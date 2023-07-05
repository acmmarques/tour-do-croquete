class UserElection < ApplicationRecord
  belongs_to :user
  belongs_to :election

  validates :election, uniqueness: { scope: :user }
end
