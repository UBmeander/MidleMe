Rails.application.routes.draw do
  
 root 'welcome#index'


  resources :midlemes
  resources :locations
  resources :users
  

 

end
