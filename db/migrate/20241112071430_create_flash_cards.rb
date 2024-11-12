class CreateFlashCards < ActiveRecord::Migration[7.0]
  def change
    create_table :flash_cards do |t|
      t.string :english_text, null: false
      t.string :pashto_text, null: false

      t.timestamps
    end
  end
end
