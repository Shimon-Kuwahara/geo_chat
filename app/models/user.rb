class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable
  has_many :matches, dependent: :destroy

  mount_uploader :profile_image, AvatarUploader
  
  validates :name, presence: true, length: { minimum: 2 }
end
