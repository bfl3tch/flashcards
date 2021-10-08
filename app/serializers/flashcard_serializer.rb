class FlashcardSerializer
  include JSONAPI::Serializer
  attributes :category, :question, :answer
end
