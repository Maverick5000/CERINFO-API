Rails.application.routes.draw do
  resources :usuarios
  resources :sigtops
  resources :prestamos
  resources :materials
  resources :idiomas
  resources :generos
  resources :editorials
  resources :bloqueos
  resources :autors
  resources :libros
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
