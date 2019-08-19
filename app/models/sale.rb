class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :paid

  after_initialize :init

  def init
    self.paid = false
  end
end
