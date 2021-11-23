class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :materials, dependent: :destroy
  has_many :buyings
  has_many :messages, dependent: :destroy
  has_many :reviews_as_reviewee, class_name: "Review", foreign_key: :reviewee_id, dependent: :destroy
  has_many :reviews_as_reviewer, class_name: "Review", foreign_key: :reviewer_id, dependent: :destroy
  has_one_attached :photo

  validates :email, presence: true
end
