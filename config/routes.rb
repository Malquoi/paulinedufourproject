Rails.application.routes.draw do
  devise_for :users

  root to: 'projects#index'


   get "artworks/:id/showvr", to: "artworks#showvr", as: 'showvr'


  resources :projects do
    collection do
        get 'vr', to: 'projects#vr'
    end
    member do
      get 'showvr', to: 'projects#showvr'
      get 'lastest', to: 'projects#lastest'
    end
    resources :artworks, only: [:new, :create, :edit, :show, :showvr, :update, :destroy ], shallow: true


  end

  resources :artworks, only: [:index]

end
