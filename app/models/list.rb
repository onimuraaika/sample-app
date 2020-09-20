class List < ApplicationRecord
  attachment :image
  #attachment(アタッチメント)メソッド。refileが指定のカラムにアクセスするために必要。
  #DBに存在する画像を取得したりアップロードが可能になる。
  #カラム名はimage_idだが、ここでは_idをつけない。
end
