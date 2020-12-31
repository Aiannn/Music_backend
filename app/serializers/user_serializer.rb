class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :user_songs, :favorites
end
