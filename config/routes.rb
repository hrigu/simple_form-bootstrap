SimpleFormBootstrap::Application.routes.draw do
  resources :articles do
    resources :comments, :only => :create, :controller => 'articles/comments'
  end

  resources :simple_objects

  root :to => 'articles#index'
end
