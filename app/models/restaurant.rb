class Restaurant < ApplicationRecord
  belongs_to :election
  has_many :votes
  has_one_attached :photo
end
