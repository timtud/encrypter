Rails.application.routes.draw do
  get 'encrypt', to: "pages#encrypt"

  get 'about', to: "pages#about"
  get 'index', to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
