Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top' #URL「top」にアクセスした時にhomesコントローラーのtopアクションが呼び出される、という設定。
  post 'todolists' => 'todolists#create' #「.../todolists」というURLにpostメソッドでリクエストしたときに、todolistsコントローラーのcreateアクションが呼び出される。
  get 'todolists' => 'todolists#index'
end
