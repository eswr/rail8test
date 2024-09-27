class Post < ApplicationRecord
  # validates :title, :content, presence: true
  validates_presence_of :title
  has_rich_text :content

  has_many :comments
end
