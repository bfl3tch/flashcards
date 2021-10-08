require 'rails_helper'

RSpec.describe 'Flashcard API' do
  describe 'index request' do
    it 'retrieves all flashcards' do
      create(:flashcard, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')
      create(:flashcard, question: "Bo Jackson's sport?", answer: 'football', category: 'sports')
      create(:flashcard, question: "Babe Ruth's sport?", answer: 'baseball', category: 'sports')
      create(:flashcard, question: "Pete Sampras' sport?", answer: 'tennis', category: 'sports')

      get '/api/v1/flashcards'

      body = JSON.parse(response.body)

      expect(response).to be_successful
      expect(body["data"][0]["attributes"].keys).to include("category")
      expect(body["data"][0]["attributes"].keys).to include("question")
      expect(body["data"][0]["attributes"].keys).to include("answer")
    end

    it 'returns an empty array if nothing is found' do
      get '/api/v1/flashcards/'

      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq({"data"=>[]})
    end
  end

  describe 'show request' do
    context 'happy path' do
      it 'returns an individual card' do
        create(:flashcard, id: 1, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')

        get '/api/v1/flashcards/1'

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body.keys).to eq(["data"])
        expect(body["data"].keys).to eq(["id", "type", "attributes"])
        expect(body["data"]["attributes"].keys).to eq(["category", "question", "answer"])
      end
    end

    context 'sad path' do
      it 'returns a 404 error' do

        get '/api/v1/flashcards/15'

        body = JSON.parse(response.body)

        expect(response).to_not be_successful
        expect(response.status).to eq(404)
        expect(body.keys).to eq(["message", "errors"])
        expect(body["message"]).to eq("your query could not be completed")
        expect(body["errors"]).to eq(["Couldn't find Flashcard with 'id'=15"])
      end
    end
  end

  describe 'create request' do
    context 'happy path' do
      it 'creates an individual card' do
        post '/api/v1/flashcards', params: { flashcard: { question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["answer"]).to eq("basketball")
      end
    end

    context 'sad path' do
      it 'returns an unprocessible entity error if bad params given' do
        post '/api/v1/flashcards', params: { flashcard: { bad_question: "Michael Jordan's sport?", wrong_answer: 'basketball', incorrect_category: 'sports' } }

        body = JSON.parse(response.body)

        expect(response).to_not be_successful
        expect(response.status).to eq(422)
      end
    end
  end

  describe 'update request' do
    context 'happy path' do
      it 'updates an individual card' do
        create(:flashcard, id: 1, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')

        patch '/api/v1/flashcards/1', params: { flashcard: { answer: 'baseball' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["answer"]).to eq("baseball")
      end
    end

    context 'sad path' do
      it 'returns previous info if bad params are given' do

        create(:flashcard, id: 1, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')

        patch '/api/v1/flashcards/1', params: { flashcard: { wrong_answer: 'baseball' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["answer"]).to eq("basketball")
      end
    end
  end

  describe 'delete request' do
    context 'happy path' do
      it 'deletes an individual card' do
        create(:flashcard, id: 1, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')
        expect(Flashcard.count).to eq(1)

        delete '/api/v1/flashcards/1'

        expect(Flashcard.count).to eq(0)
      end
    end

    context 'sad path' do
      it 'returns an error if that card does not exist' do
        create(:flashcard, id: 1, question: "Michael Jordan's sport?", answer: 'basketball', category: 'sports')
        expect(Flashcard.count).to eq(1)

        delete '/api/v1/flashcards/2'

        body = JSON.parse(response.body)

        expect(response).to_not be_successful
        expect(response.status).to eq(404)
        expect(body.keys).to eq(["message", "errors"])
        expect(body["message"]).to eq("your query could not be completed")
        expect(body["errors"]).to eq(["Couldn't find Flashcard with 'id'=2"])
      end
    end
  end
end
