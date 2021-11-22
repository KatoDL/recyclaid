class Message < ApplicationRecord
  belongs_to :user
  has_many :buyings

  validates :content, presence: true
end
