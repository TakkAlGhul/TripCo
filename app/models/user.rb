class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  has_many :products
  has_many :contents

  validates :password, presence: true
  validates :email, uniqueness: true

  protected
  
  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.create(nickname: auth.info.name,
                        email: User.dumy_email(auth),
                        provider: auth.provider,
                        uid: auth.uid,
                        password: Devise.friendly_token[0, 20]
                        )
    end
    user
  end

  private

  def self.dumy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com" #POINT
  end
end
