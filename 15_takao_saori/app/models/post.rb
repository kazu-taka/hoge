class Post < ActiveRecord::Base
    
  has_many :reviews
    
  validates :title, presence: true, length: {maximum: 50}
  validates :body, presence: true, length: {maximum: 1000}
  validates :category, presence: true, length: {maximum: 50}
    
end
