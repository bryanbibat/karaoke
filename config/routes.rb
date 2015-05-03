Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'pages#index'
  get 'about', to: 'pages#about', as: 'about'
  get 'submit_info', to: 'pages#submit_info', as: 'submit_info'
  get 'request_info', to: 'pages#request_info', as: 'request_info'
  resources 'karaoke_places'
  resources 'karaoke_machines' do 
    member do
      get 'ktvs'
      get 'songs'
    end
  end
  resources 'artists'
  resources 'songs'
  resources 'tags' do
    member do
      get 'artist'
      get 'song'
      get 'place'
    end
  end
end
