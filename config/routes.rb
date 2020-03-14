Rails.application.routes.draw do
  root "chapters#home"

  resources :chapters do
    collection do
      get "refresh"
    end
  end

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks",
  }
end
