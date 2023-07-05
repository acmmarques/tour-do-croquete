class Election < ApplicationRecord
  belongs_to :user
  has_many :restaurants, dependent: :destroy
  has_many :user_elections, dependent: :destroy
  has_one_attached :photo
end
