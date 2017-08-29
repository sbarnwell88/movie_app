class FilmsController < ApplicationController
    def index
        @films = Film.all
    end

    def new
        @film = Film.new
    end

    def create
        @film = Film.create!(film_params)

        redirect_to films_path(@film)
    end

      private
    def film_params
        params.require(:film).permit(:title, :genre, :year, :synopsis, :picture)
    end
end
