Rails.application.routes.draw do
  # gem 'devise'の際に自動追加
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  #only (生成するルーティングを限定する。resourcesならもっと作って)
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy] #いいね機能

    resources :post_comments, only: [:create, :destroy] #コメント機能
  end

end
