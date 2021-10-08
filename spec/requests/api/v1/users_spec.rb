require 'rails_helper'

RSpec.describe 'Users API' do
  describe 'index request' do
    it 'retrieves all users' do
      create_list(:user, 2)

      get '/api/v1/users'

      body = JSON.parse(response.body)

      expect(response).to be_successful
      expect(body["data"][0]["attributes"].keys).to include("name")
      expect(body["data"][0]["attributes"].keys).to include("login")
    end

    it 'returns an empty array if nothing is found' do
      get '/api/v1/users/'

      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq({"data"=>[]})
    end
  end

  describe 'show request' do
    context 'happy path' do
      it 'returns an individual card' do
        create(:user, id: 1)

        get '/api/v1/users/1'

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body.keys).to eq(["data"])
        expect(body["data"].keys).to eq(["id", "type", "attributes"])
        expect(body["data"]["attributes"].keys).to eq(["name", "login"])
      end
    end

    context 'sad path' do
      it 'returns a 404 error' do

        get '/api/v1/users/15'

        body = JSON.parse(response.body)

        expect(response).to_not be_successful
        expect(response.status).to eq(404)
        expect(body.keys).to eq(["message", "errors"])
        expect(body["message"]).to eq("your query could not be completed")
        expect(body["errors"]).to eq(["Couldn't find User with 'id'=15"])
      end
    end
  end

  describe 'create request' do
    context 'happy path' do
      it 'creates an individual user' do
        post '/api/v1/users', params: { user: { name: "Tracy McGrady", login: 'Tmac' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["name"]).to eq("Tracy McGrady")
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
      it 'updates an individual user' do
        create(:user, id: 1)

        patch '/api/v1/users/1', params: { user: { login: 'Link' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["login"]).to eq("Link")
      end
    end

    context 'sad path' do
      it 'returns previous info if bad params are given' do
        create(:user, id: 1)

        patch '/api/v1/users/1', params: { user: { not_login: 'fake' } }

        body = JSON.parse(response.body)

        expect(response).to be_successful
        expect(response.status).to eq(200)
        expect(body["data"]["attributes"]["login"]).to_not eq('fake')
      end
    end
  end

  describe 'delete request' do
    context 'happy path' do
      it 'deletes an individual user' do
        create(:user, id: 1)
        expect(User.count).to eq(1)

        delete '/api/v1/users/1'

        expect(User.count).to eq(0)
      end
    end

    context 'sad path' do
      it 'returns an error if that card does not exist' do
        create(:user, id: 1)
        expect(User.count).to eq(1)

        delete '/api/v1/users/2'

        body = JSON.parse(response.body)

        expect(response).to_not be_successful
        expect(response.status).to eq(404)
        expect(body.keys).to eq(["message", "errors"])
        expect(body["message"]).to eq("your query could not be completed")
        expect(body["errors"]).to eq(["Couldn't find User with 'id'=2"])
      end
    end
  end
end
