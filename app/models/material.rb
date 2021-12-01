class Material < ApplicationRecord
  belongs_to :user
  has_many :buyings
  has_many_attached :photos

  monetize :price_cents

  validates :description, presence: true
  validates :description, length: { minimum: 6 }
  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_location,
    against: [ :name, :description, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
