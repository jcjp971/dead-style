class User < ApplicationRecord
  has_many :sales
  has_many :products, through: :sales
  has_many :own_products, class_name: 'Product', foreign_key: :owner_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, null: false
  validates :address, presence: true, null: false
  validates :seller, default: false
  validates :avatar, presence: true, null: false

  mount_uploader :avatar, AvatarUploader
end
