Appetite::Application.routes.draw do
  resources :locii

  root 'locii#index'
end
