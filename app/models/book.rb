class Book < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 1001 }
  validates :image_url, presence: true#,:format => URI::regexp(%w(http https))
end
