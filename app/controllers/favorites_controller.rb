class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
    end
    
    def create
        film_id = params[:film_id]
        # user_id = params[:user_id]
        @favorite = Favorite.create!(user_id: current_user.id, film_id: film_id )

        redirect_to favorites_path(@favorite)
    end

end
