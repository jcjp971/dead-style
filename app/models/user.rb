class User < ApplicationRecord
  has_many :products
  has_many :sales, through: :products
  has_many :buys, class_name: 'Sale', foreign_key: :user_id
  has_many :own_products, class_name: 'Product', foreign_key: :owner_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :address, presence: true
  validates :avatar, presence: true

  mount_uploader :avatar, AvatarUploader

  after_initialize :init

  def initsh
    self.seller = false
  end
end
