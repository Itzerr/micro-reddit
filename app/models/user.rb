class User < ApplicationRecord
  validates :nickname, presence: true, uniqueness: true, length: { in: 2..15 }
  
  has_many :posts
  has_many :comments
end
