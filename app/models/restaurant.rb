class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, :name, :address, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORY }
end

