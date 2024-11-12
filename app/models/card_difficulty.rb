class CardDifficulty < ApplicationRecord
  belongs_to :flash_card
  
  validates :difficulty, presence: true, inclusion: { in: ['super_easy', 'needs_practice'] }
  validates :times_reviewed, presence: true, numericality: { greater_than_or_equal_to: 0 }
end 