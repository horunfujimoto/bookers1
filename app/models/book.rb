class Book < ApplicationRecord
  validates :title, presence: true #バリデーションで必須入力にする
  validates :body, presence: true #バリデーションで必須入力にする
end
