class Book < ApplicationRecord
  has_and_belongs_to_many :categories
  
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 1001 }
  validates :image_url, presence: true
end
