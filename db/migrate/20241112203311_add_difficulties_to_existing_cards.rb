class AddDifficultiesToExistingCards < ActiveRecord::Migration[8.0]
  def up
    FlashCard.find_each do |card|
      unless card.card_difficulty
        CardDifficulty.create!(
          flash_card: card,
          difficulty: 'needs_practice',
          times_reviewed: 0
        )
      end
    end
  end

  def down
    # No need to remove difficulties if we rollback,
    # as they'll be removed by the foreign key constraint
    # when the card_difficulties table is dropped
  end
end 