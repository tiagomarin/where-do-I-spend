Rails.application.routes.draw do
  devise_for :users
  root "splash_screen#index"  
  resources :users do 
    resources :expenses
    resources :groups do
      resources :group_expenses
    end
  end
end
