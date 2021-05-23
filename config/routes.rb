Rails.application.routes.draw do


  resources :users
  resources :products
  # get 'see/collections'
  # get 'save/list'
  # get 'save_list/shoppingCart'
  # get 'new_ins/clothing'
  # get 'women/clothing'
  # get 'men/clothing'
  # get 'kids/clothing'
  # get 'main_page/index'
  get 'home' => 'main_page#index'
  post 'home' => 'main_page#index'
  get 'kids' => 'kids#clothing'
  get 'men' => 'men#clothing'
  get 'women' => 'women#clothing'
  get 'new' => 'new_ins#clothing'
  get 'cart' => 'cart#show'
  get 'save' => 'save#list'
  get 'seeAll' => 'see#collections'

  # get 'main_page/index' => 'main_page#index'
  # post'main_page/index' => 'main_page#index'


  resource :saved_list, only: [:update, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
