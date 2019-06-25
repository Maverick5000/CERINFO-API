Rails.application.routes.draw do
  resources :solicituds
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
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
  resources :multas
  get 'login', to: 'usuarios#login'
  get 'user/multas', to: 'multas#multasUser'
  get 'user/prestamos', to: 'prestamos#prestamosUser'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
