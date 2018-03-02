Rails.application.routes.draw do

  root 'magazines#index'

  resources :magazines
  resources :songs
  resources :artist

  scope 'magazines/:magazine_id', as: 'magazine' do
    resources :songs
  end


end
