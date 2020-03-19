class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :age, presence: true
  validates :age, numericality: true
  validates :age, numericality: { greater_than: 0 }
  validates :bio, presence: true
  validates :bio, length: {minimum: 30}

end
