class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewee, class_name: "User"

  # validates :content, presence: true
  validates :rating, numericality: true
end
