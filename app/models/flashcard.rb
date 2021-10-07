class Flashcard < ApplicationRecord
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates_presence_of :question, :answer, :correct_guesses, :incorrect_guesses
end
