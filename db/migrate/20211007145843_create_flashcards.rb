class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.string :question
      t.string :answer
      t.string :category
      t.integer :correct_guesses, default: 0
      t.integer :incorrect_guesses, default: 0

      t.timestamps
    end
  end
end
