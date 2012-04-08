Trocalivro::Application.routes.draw do
  
	resources :pessoas
	resources :livros
  root :to => 'pessoas#index'

end
