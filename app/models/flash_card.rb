class FlashCard < ApplicationRecord
  validates :english_text, presence: true
  validates :pashto_text, presence: true

  def self.random_batch
    order("RANDOM()")
  end
end 