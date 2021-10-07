FactoryBot.define do
  factory :flashcard do
    question { "MyString" }
    answer { "MyString" }
    correct_guesses { 1 }
    incorrect_guesses { 1 }
    user { nil }
  end
end
