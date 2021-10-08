FactoryBot.define do
  factory :user do
    login { Faker::Games::Zelda.character }
    name { Faker::TvShows::Seinfeld.character  }
  end
end
