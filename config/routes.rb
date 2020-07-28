Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/tips', to: 'tips#show'
      get '/faq', to: 'questions#index'
    end
  end
end
