Rails.application.routes.draw do
  get 'graphics/index'
  root 'todo_lists#index'

  resources :todo_lists do
    resources :todo_items do
      collection do
        get :export_csv
      end
    end
  end
  namespace :todo_list do
    resources :todo_items
  end
end
