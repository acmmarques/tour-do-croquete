class Vote < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :flavour, :crunchiness, :appearance, :meat_ratio,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0,
                            less_than_or_equal_to: 10,
                            message: "Só números inteiros entre 0 e 10"}
  validates :restaurant, uniqueness: { scope: :user, message: "já votaste no croquete deste restaurante" }
end
