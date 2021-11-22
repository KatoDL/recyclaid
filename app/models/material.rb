class Material < ApplicationRecord
  belongs_to :user
  has_many :buyings

  validates :description, presence: true
  validates :description, length: { min: 6 }
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
