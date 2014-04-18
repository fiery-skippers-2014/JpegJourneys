class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  has_many :journeys
  has_many :destinations, through: :journeys

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email,
             presence: true,
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }

  validates :password_hash,
             presence: true,
             length: { minimum: 6 }

  before_save { self.email = email.downcase }


  include Gravtastic

  is_gravtastic!

  def validate_password
    if self[:password_hash] != @password_salt
      errors.add(:password, 'is incorrect!')
    end
  end
end
