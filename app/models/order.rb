class Order < ApplicationRecord
  belongs_to :user
  belongs_to :material

  monetize :amount_cents
end
