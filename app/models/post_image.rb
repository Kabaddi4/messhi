class PostImage < ApplicationRecord #モデル作成の際、途中で大文字が含まれていたら _ で代用される

  belongs_to :user
  attachment :image
  #dependent:destroy 1:Nの時、1が削除されれば関連するNも削除される。
  has_many :post_comments, dependent: :destroy

end
