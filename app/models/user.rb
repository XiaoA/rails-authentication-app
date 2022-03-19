class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: true,
            uniqueness: true
  
  validates :password,
            length: {minimum: 8}
  
  validates :username,
            uniqueness: true,
            length: {minimum: 3}

end
