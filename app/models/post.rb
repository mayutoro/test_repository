class Post < ActiveRecord::Base
    validates :name, presence: { message: "名前を入力してください" }
end
