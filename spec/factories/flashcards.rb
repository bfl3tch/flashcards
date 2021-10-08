FactoryBot.define do
  factory :flashcard do
    question { "MyString" }
    answer { "MyString" }
    category { "MyString" }
    correct_guesses { 1 }
    incorrect_guesses { 1 }
  end
end
