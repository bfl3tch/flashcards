class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :login
end
