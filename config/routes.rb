Rails.application.routes.draw do
  root to: 'home#index'

  namespace :locales do
    get :en
    get :de
  end
end
