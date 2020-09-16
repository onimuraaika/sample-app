class TodolistsController < ApplicationController
  
  def new
    @list = List.new # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成。
  end
  
  def create
    #①データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    #②データをデータベースに保存するためのsaveメソッド実行
    list.save
    #③トップ画面へリダイレクト
    redirect_to '/top'
  end

#provateは必ず下に書くこと
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
