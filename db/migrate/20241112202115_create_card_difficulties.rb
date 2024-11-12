class CreateCardDifficulties < ActiveRecord::Migration[8.0]
  def change
    create_table :card_difficulties do |t|
      t.references :flash_card, null: false, foreign_key: true
      t.string :difficulty, null: false, default: 'needs_practice'
      t.integer :times_reviewed, null: false, default: 0
      t.datetime :last_reviewed_at

      t.timestamps

      t.index :difficulty
    end
  end
end
