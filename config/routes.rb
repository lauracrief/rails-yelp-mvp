Rails.application.routes.draw do
  #get '/' => "pages#home" <=>
  root to: "pages#home"
    resources :restaurants do
      resources :reviews, only:[:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
