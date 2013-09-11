BootstrapIt::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  get 'message' => 'messages#new'
  get 'about_me' => 'welcome#about_me'
  root "welcome#index"
end