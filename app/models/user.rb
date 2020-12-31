class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :songs, through: :favorites

    has_secure_password

    validates :username, uniqueness: {case_sensitive: true}

    def user_songs
        user_songs = []
        self.favorites.map do |favorite|
            user_songs << favorite.song
        end 
        user_songs
    end
end
