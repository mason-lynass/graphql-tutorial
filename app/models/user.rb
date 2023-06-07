class User < ApplicationRecord
    has_secure_password

    validates :user, presence: true 
    validates :password_digest, presence: true
end
