Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'recipes#index'

  resources :recipes do
    collection do
      get "search", to: "recipes#search"
      get "result", to: "recipes#result"
    end
  end
end
