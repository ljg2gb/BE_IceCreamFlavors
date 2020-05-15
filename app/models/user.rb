class User < ApplicationRecord
    validates :name, :email, :username, :password, presence: true
    has_secure_password
end
