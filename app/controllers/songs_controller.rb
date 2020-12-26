class SongsController < ApplicationController

    def artists
        url = "https://api.deezer.com/artist/#{params[:id]}"
        response = HTTParty.get(url)

        render json: response.parsed_response
    end

end
