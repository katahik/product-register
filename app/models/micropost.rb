class Micropost < ApplicationRecord
    # MicropostはUserに帰属している
    belongs_to :user
    # コンテンツの長さがマックスで140文字を超えないように、バリデーションを設定
    validates :content,length: {maximum:140},
              # マイクロポストのコンテントが存在しているが確認するバリデーション
              presence: true
end
