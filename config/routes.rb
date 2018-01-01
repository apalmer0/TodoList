Rails.application.routes.draw do
  resources :things
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this file is what maps urls - or more specifically http requests - to controller methods.
  # it uses a shorthand ('resources') provided by rails to clean up a lot of duplication.

  resources :items
  # 'resources: items' could also be written like this:
  # get    '/items',             to: 'items#index'
  # get    '/items/:id',         to: 'items#show'
  # post   '/items/new',         to: 'items#new'
  # patch   '/items/:id/edit',   to: 'items#update'
  # delete '/items/:id',         to: 'items#destroy'
  # once your app grows and you have other resources like users, notes, etc,
  # this would get super repetitve
end
