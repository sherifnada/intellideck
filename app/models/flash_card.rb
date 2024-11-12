class FlashCard < ApplicationRecord
  validates :english_text, presence: true
  validates :pashto_text, presence: true

  has_one :card_difficulty, dependent: :destroy
  after_create :create_difficulty_tracking

  def self.random_batch
    joins(:card_difficulty)
      .order(Arel.sql('CASE 
        WHEN card_difficulties.difficulty = \'needs_practice\' THEN 0 
        ELSE 1 
        END, RANDOM()'))
  end

  private

  def create_difficulty_tracking
    create_card_difficulty unless card_difficulty
  end
end 