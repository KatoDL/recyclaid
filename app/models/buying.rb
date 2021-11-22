class Buying < ApplicationRecord
  belongs_to :material
  belongs_to :user
  belongs_to :message

  validates :message, presence: true
  validates :status, presence: true
end
