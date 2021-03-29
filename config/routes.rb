Rails.application.routes.draw do
  get 'tr_pendaftarans/index'
  get 'tr_pendaftarans/edit'
  get 'tr_pendaftarans/update'
  get 'tr_pendaftarans/new'
  get 'tr_pendaftarans/create'
  get 'tr_pendaftarans/show'
  get 'tr_pendaftarans/destroy'
  devise_for :users
  resources :tr_pendaftarans
  resources :tr_registrations
  #get 'tr_registrations/index'
  #get 'tr_registrations/edit'
  #get 'tr_registrations/update'
  #get 'tr_registrations/new'
  root to: "tr_pendaftarans#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
