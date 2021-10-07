Rails.application.routes.draw do
  get '/auth/github', to: 'authentication#github', format: false
  namespace :api do
    namespace :v1 do

      resources :tags do
        get :flashcards, on: :member
      end

      resources :flashcards do
        get :tags, on: :member
      end

      resources :users
    end
  end
end
