Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  #URL「top」にアクセスした時、homesコントローラーのtopアクションが呼び出される、という設定。
  post 'todolists' => 'todolists#create' 
  #「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのcreateアクションが呼び出される。投稿送信
  get 'todolists' => 'todolists#index'
end
