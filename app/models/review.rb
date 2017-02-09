class Review < ApplicationRecord
  validates :restaurant_id, presence: true
  validates :content, presence: true
  belongs_to :restaurant
end
