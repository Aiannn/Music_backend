class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.all
        render json: @favorites, :include => [:song]
    end

    def create
        @user = User.find_by(username: params[:username])

        @song = Song.create(title: params[:title], artist: params[:artist], duration: params[:duration], preview: params[:preview], album_pic: params[:album_pic], artist_deezer_id: params[:artist_deezer_id])
        
        @favorite = Favorite.create(user_id: @user.id, song_id: @song.id)
        render json: @favorite, include: [:song]
    end

end
