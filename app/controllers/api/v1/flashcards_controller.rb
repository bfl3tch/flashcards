class Api::V1::FlashcardsController < ApplicationController
  before_action :set_flashcard, only: [:show, :update, :destroy]

  def index
    json_response(FlashcardSerializer.new(Flashcard.all))
  end

  def show
    json_response(FlashcardSerializer.new(@flashcard))
  end

  def create
    flashcard = Flashcard.create!(flashcard_params)

    json_response(FlashcardSerializer.new(flashcard))
  end

  def update
    @flashcard.update(flashcard_params)
    json_response(FlashcardSerializer.new(@flashcard))
  end

  def destroy
    @flashcard.destroy
  end

  private

  def set_flashcard
    @flashcard = Flashcard.find(params[:id])
  end

  def flashcard_params
    params.permit(:question, :answer, :correct_guesses, :incorrect_guesses, :category)
  end
end
