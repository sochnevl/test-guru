Rails.application.routes.draw do

  root 'tests#index'

  devise_for :users, path: :gurus,
                     path_names: { sign_in: :login, sign_out: :logout },
                     controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :tests, only: :index do
    member do
      post :start
    end
  end

  resources :test_passings, only: %i[show update] do
    member do
      get :result
    end
  end

  namespace :admin do
    resources :tests do
      resources :questions, except: :index, shallow: true do
        resources :answers, except: :index, shallow: true
      end
    end
  end
end
