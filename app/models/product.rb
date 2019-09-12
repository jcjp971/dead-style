class Product < ApplicationRecord
  belongs_to :owner, class_name: "User"
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORY = %w[slow smooth fast hard]

  validates :name, presence: true, null: false
  validates :description, presence: true, null: false
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates :photo, presence: true, null: false
  validates :price, presence: true, null: false

  mount_uploader :photo, PhotoUploader

end
