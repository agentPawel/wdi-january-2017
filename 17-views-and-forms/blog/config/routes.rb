Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/articles/new' => 'articles#new'
  get '/articles/new2' => 'articles#new2'
  # post('/articles/create' => 'articles#create', as: 'articles')

  resources :articles
end
