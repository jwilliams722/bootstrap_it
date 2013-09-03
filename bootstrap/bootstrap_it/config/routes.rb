BootstrapIt::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  get 'contact' => 'welcome#contact'
  root "welcome#index"
end