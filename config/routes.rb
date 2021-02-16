Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    delete 'sign_out', to: 'devise/sessions#destroy'
    root to: 'devise/sessions#new'
  end

  resource :dashboard, controller: "dashboard"
end
