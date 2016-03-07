Rails.application.routes.draw do
  mount Shoppe::Engine => "/shoppe"

  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"
  get "products", to: "products#index", as: "products"

  root to: "static_pages#home"
  get "about", to: "static_pages#home", as: "about"

  get "basket", to: "orders#show"
  delete "basket", to: "orders#destroy"
end
