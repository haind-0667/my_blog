class PostTag < ApplicationRecord
  has_many :posts
  has_many :tags
end
