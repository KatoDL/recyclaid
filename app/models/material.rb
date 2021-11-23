class Material < ApplicationRecord
  belongs_to :user
  has_many :buyings
  has_many_attached :photos

  validates :description, presence: true
  validates :description, length: { minimum: 6 }
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_location,
    against: [ :name, :description, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
