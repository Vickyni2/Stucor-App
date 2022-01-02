Rails.application.routes.draw do
  get 'dept/it'
  get 'dept/dept'
  get 'dept/csc'
  get 'dept/mech'
  get 'dept/civil'
  get 'dept/eee'
  get 'dept/ece'
  
  resources :colleges
  devise_for :us_ers
  get 'page/profile'
  resources :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :students
  get 'tables/index'
  post 'tables/new'
  post 'tables/create'
  get 'tables/destroy'

  get 'time_ts/index'
  get 'time_ts/new'
  get 'time_ts/create'
  get 'time_ts/destroy'
  resources :time_tables
  resources :wh_legents
  root 'home#index'

  get "tables/index" 
  get "time_ts/index" 
  get 'page/internal'
  get 'page/malpractice'
  get 'page/m_certificate'
  get 'page/result'
  get 'page/contact'
  get 'page/about'
  get 'page/cgpa'
  get 'page/after'
  get 'clg/vel'
  get 'clg/mad'
  get 'clg/kanya'
  get 'clg/ero'
  get 'clg/vellur'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users  
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'

  #get 'Sign out', to: 'us_er/sign_out', as: 'destroy_us_er_session'

  match ':controller(/:action(/:id(.:format)))',:via => [:get,:post , :delete]
  get 'Signout', to: 'sessions#destroy', as: 'Signout'

end
