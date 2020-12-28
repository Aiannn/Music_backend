class SongsController < ApplicationController

    # skip_before_action :authorized, only: [:artists]

    def artists
        url = "https://api.deezer.com/artist/#{params[:id]}"
        response = HTTParty.get(url)

        render json: response.parsed_response
    end

end
