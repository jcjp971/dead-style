class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :paid, default: false
end
