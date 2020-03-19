class Post < ApplicationRecord
  belongs_to :bogger
  belongs_to :destination

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
  validates :content, length: {minimum: 100}

end
