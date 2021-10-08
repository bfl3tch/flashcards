require 'rails_helper'

RSpec.describe Flashcard, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:answer) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:correct_guesses) }
    it { should validate_presence_of(:incorrect_guesses) }
  end
end
