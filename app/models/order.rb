class Order < ApplicationRecord
  belongs_to :user
  belongs_to :material
  belongs_to :buying

  monetize :amount_cents
end
