Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root "properties#index"
    resources :properties, only: [:index, :new, :create, :show]
    devise_for :users
  end
end
