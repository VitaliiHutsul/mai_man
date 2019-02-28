Rails.application.routes.draw do

  scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
    root 'main#index'

    resource :request, only: [:create]
    get 'updates/archive', to: 'updates#index', as: :updates_archive
    get 'news/archive', to: 'news#index', as: :news_archive

    resources :construction_conditions, only: [:index, :show]
    resources :news, only: [:show]
    resources :tour, only: [:index]
    resources :galleries, only: [:index], path: :gallery
    resources :videos, only: [:index], path: :video
    resources :downloads, only: [:index]

  end

  root to: redirect("/#{I18n.default_locale}", status: 302), as: :redirected_root

  # Admin login
  get 'admin/login'       => 'user_sessions#new', as: :login
  post 'admin/login'      => 'user_sessions#create', as: :do_login
  delete 'admin/logout'   => 'user_sessions#destroy', as: :logout

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
