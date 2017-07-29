class Book < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :authors
  
  
  validates :title, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :image_url, presence: true
  validates :category_ids, presence: true
  validates :author_ids, presence: true
  
  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end
  
  
 
 
end
