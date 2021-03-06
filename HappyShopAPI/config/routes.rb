Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq" # monitoring console

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :products, only: %i[index show]
    end
  end
end
