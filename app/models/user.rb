class User < ApplicationRecord
    # Userモデルは多くのmicropostsを持っている
    has_many :microposts
    # name,emailのフォームに値が入っているかどうか
    validates :name, presence: true
    validates :email, presence: true
end
