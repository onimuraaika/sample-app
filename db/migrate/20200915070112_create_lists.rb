class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
# ⬆️ ここまでは元々書いてある
      t.string :title #カラム(縦1列)の名前を「title」
      t.string :body #カラムの名前を「body」
      
# ⬇️ ここまでは元々書いてある
      t.timestamps
    end
  end
end
