class Election < ApplicationRecord
  belongs_to :user
  has_many :restaurants
end
