require "rails_helper"

RSpec.describe Api::V1::FlashcardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/flashcards").to route_to("api/v1/flashcards#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/flashcards/1").to route_to("api/v1/flashcards#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/flashcards").to route_to("api/v1/flashcards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/flashcards/1").to route_to("api/v1/flashcards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/flashcards/1").to route_to("api/v1/flashcards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/flashcards/1").to route_to("api/v1/flashcards#destroy", id: "1")
    end
  end
end
