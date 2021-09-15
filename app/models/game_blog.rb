class GameBlog < ApplicationRecord
  validates_presence_of :name

  has_many :posts
  belongs_to :user
end
