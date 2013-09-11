BootstrapIt::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  get 'message' => 'messages#new'
  root "welcome#index"
end