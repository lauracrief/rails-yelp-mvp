class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  #Validation
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_blank: false }
  validates :name, uniqueness: true, presence: true, allow_blank: false
  validates :address, presence: {message: "Il manque une adresse"}
end
