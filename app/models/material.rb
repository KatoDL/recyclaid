class Material < ApplicationRecord
  belongs_to :user
  has_many :buyings
  has_many_attached :photos

  validates :description, presence: true
  validates :description, length: { minimum: 6 }
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
