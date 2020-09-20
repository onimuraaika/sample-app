class TodolistsController < ApplicationController
  
  def new
      @list = List.new # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成。
  end
  
  def create
      list = List.new(list_params) #「list_params」はprivate以下で定義されている。
      #⬆️①.「List.new」という空のペットボトルを作る。その中には「(list_params)」という下で作られたフィルターを通った情報が入れられる。(.newは「空の」)
      list.save
      #⬆️②.saveはrailsが用意したメソッド。「list」は上にある①listと同じ。フィルターをかけられた情報が入ったペットボトルをDBに保存(.save)する。
      redirect_to todolist_path(list.id)
      #⬆️③②で保存完了後詳細画面へ移動。「ここに飛ばして、todolist_pathというpath名の、①listのid番目の情報へ」
  end
  
  def index #データの一覧表示アクションの追加
      @lists = List.all #「Listモデルの全データを@listに入れてViewファイルまで届ける
  end
  
  def show #データの詳細表示アクションの追加
      @list = List.find(params[:id]) #送られてきたid番目の情報ひとつを探し出して、それを@listに入れてViewファイルまで届ける。
  end
  
  def edit
      @list = List.find(params[:id]) #編集対象データは「モデル名.find(params[:id])」で取得する。「params」はRailsで送られてきた値を受け取るためのメソッド。
  end
  
  def update
      list = List.find(params[:id])
      list.update(list_params) #.updateは更新するメソッド。
      redirect_to todolist_path(list.id)
  end
  
   #privateは必ず下に書くこと/ここから下はcontrollerの中でしか呼び出せない
  private #ストロングパラメータ
  def list_params
      params.require(:list).permit(:title, :body)
  end
end
