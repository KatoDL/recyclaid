class Buying < ApplicationRecord
  belongs_to :material
  belongs_to :user
  has_many :messages
  has_one :order, dependent: :destroy

  validates :message, presence: true
  validates :status, presence: true
end
