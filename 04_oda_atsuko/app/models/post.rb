class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments 
  validates :title,
    presence: true, length: { maximum: 50 }
  validates :body,
    presence: true, length: { maximum: 1000 }
  validates :category,
    presence: true, length: { maximum: 50 }
    scope :find_newest_article, -> { order(created_at: :desc).limit(5) }
end
