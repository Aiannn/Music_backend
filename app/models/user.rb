class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :songs, through: :favorites

    has_secure_password

    validates :username, uniqueness: {case_sensitive: true}
end
