Blog::Application.routes.draw do

  devise_for :users, :controllers => { :sessions => "users/sessions", :registrations => "users/registrations"}
  devise_for :users do 
    get 'sign_in', :to => "users/sessions#new"
    get 'sign_up', :to => "users/registrations#new"
    delete 'sign_out', :to => "users/sessions#destroy"
    get 'edit_user_info', :to => "users/registrations#edit"
  end

  resources :posts do
    resources :comments
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

end
