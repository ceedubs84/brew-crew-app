class Brew < ApplicationRecord
  validates :name, presence: true
  validates :style, presence: true
end
