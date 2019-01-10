Rails.application.routes.draw do
  get 'chirps/index'
  get 'chirps/new'
  get 'chirps/create'
  get 'chirps/edit'
  get 'chirps/update'
  get 'chirps/show'
  get 'chirps/destroy'
  get 'chirps/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
