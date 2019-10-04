Rails.application.routes.draw do
  root to: 'home#index'

  namespace :locales do
    get :en, format: 'json'
    get :de, format: 'json'
  end
end
