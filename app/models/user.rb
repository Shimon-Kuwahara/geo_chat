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

  mount_uploader :profile_image, AvatarUploader

  validates :name, presence: true, length: { minimum: 2 }

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = User.where(user_id: auth.uid).first_or_initialize(
     name: auth.info.name,
     email: auth.info.email,
     user_id: auth.uid
   )

   if user.persisted?
    sns.user = user
    sns.save
   end
   { user: user, sns: sns }

  end

  def update_location(latitude, longitude)
    self.latitude = latitude
    self.longitude = longitude
    save
  end
end
