Payments::Engine.routes.draw do
  resources :payments, only:[:index,:show]
end
