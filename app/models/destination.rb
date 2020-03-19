class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  validates :name, presence: true
  validates :name, uniqueness: true
  
end
