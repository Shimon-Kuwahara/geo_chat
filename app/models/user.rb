class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:twitter, :google_oauth2]

  has_many :matches, dependent: :destroy

  has_many :user_rooms
  has_many :chats
  has_many :rooms, through: :user_rooms
  has_many :sns_credentials

  validates :name, presence: true, length: { minimum: 2 }

  def update_location(latitude, longitude)
    self.latitude = latitude
    self.longitude = longitude
    save
  end
end
