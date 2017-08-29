class FavoritesController < ApplicationController
    def index
        @favorites = Favorites.all
    end
    
    def create
        film_id = params[:film_id]
        user_id = params[:user_id]
        Favorite.create(user_id: user_id, film_id: film_id)
    end

end
