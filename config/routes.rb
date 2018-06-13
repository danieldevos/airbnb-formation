Rails.application.routes.draw do
  devise_for :users, :path=>'',
                     :path_names=>{:sign_in=>'Login', :sign_out=>'Logout', :edit=>'profile'} 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# You can have the root of your site routed with "root"
root 'pages#home' 

resources :users, only: [:show]


end

