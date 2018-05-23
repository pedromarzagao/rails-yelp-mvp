class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy

  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
