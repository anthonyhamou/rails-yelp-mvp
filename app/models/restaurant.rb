class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
