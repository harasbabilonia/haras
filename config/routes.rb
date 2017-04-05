Rails.application.routes.draw do
  resources :parcelas
  resources :vendas
  resources :tipo_vendas
  resources :animais
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
