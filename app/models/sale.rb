class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :product_id, presence: true
  validates :user_id, presence: true
  validates :date, presence: true
  validates :paid, presence: true
  after_initialize :init

  def init
    self.paid = false
  end
end
