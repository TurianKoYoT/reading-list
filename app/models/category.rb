class Category < ApplicationRecord
  has_and_belongs_to_many :books
  validates :label, presence: true, length: { maximum: 50 }, uniqueness: true
end
