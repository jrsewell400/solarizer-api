Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :tips do
        get '/tips', to: 'tips#show'
      end
    end
  end
end
