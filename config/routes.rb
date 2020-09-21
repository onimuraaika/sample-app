Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get 'todolists/new'
  get 'top' => 'homes#top'
  #URL「.../top」というURLにgetメソッドでリクエストした時、homesコントローラーのtopアクションが呼び出される、という設定。
  post 'todolists' => 'todolists#create' 
  #URL「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのcreateアクションが呼び出される。投稿送信
  get 'todolists' => 'todolists#index'
  #「.../todolists」というURLにpostメソッドでリクエストした時、todolistsコントローラーのindexアクションが呼び出される。一覧表示。
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  #「.../todolists/:1とか/:2とか」URLにgetメソッドでリクエストした時、todolistsコントローラのshowアクションが呼び出される。詳細表示。
  #「as:」でこの操作に「todolist」というあだ名をつけた。
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  #「.../todolists/:id/edit」URLにgetメソッドでリクエストした時、todolistsコントローラのeditアクションが呼び出される。編集画面表示。
  #あだ名は「edit_todolist」
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  #「patch」は更新。「todolists/:id」URLにpatchメソッドでリクエストした時、todolistsコントローラーのupdateアクションが呼び出される。データの更新
  #あだ名は「update_todolist」
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  #「delete」は削除。「todolists/:id」URL(一覧表示画面)にアクセスした時、todolistsコントローラのdestroyアクションが呼び出される。データの削除。
  #あだ名は「destroy_todolists」
end
