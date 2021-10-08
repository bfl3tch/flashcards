class Flashcard < ApplicationRecord
  validates_presence_of :question, :answer, :category, :correct_guesses, :incorrect_guesses
end
