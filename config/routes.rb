Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'pages#index'
  resources 'karaoke_places'
  resources 'karaoke_machines' do 
    member do
      get 'ktvs'
      get 'songs'
    end
  end
  resources 'artists'
  resources 'songs'
end
