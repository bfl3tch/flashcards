class User < ApplicationRecord
  has_many :flashcards, dependent: :destroy
  validates_presence_of :login, :name
end
