class Product < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :name, presence: true, null: false
  validates :description, presence: true, null: false
  validates :category, presence: true, null: false
  validates :photo, presence: true, null: false
  validates :price, presence: true, null: false
  validates :active

  mount_uploader :photo, PhotoUploader

  after_initialize :init

  def init
    self.active = false
  end
end
