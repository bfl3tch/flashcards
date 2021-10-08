Rails.application.routes.draw do
  get '/auth/github', to: 'authentication#github', format: false
  namespace :api do
    namespace :v1 do
      resources :users
      resources :flashcards
    end
  end
end
