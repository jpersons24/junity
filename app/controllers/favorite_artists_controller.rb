class FavoriteArtistsController < ApplicationController

  def new
    @favorite_artist = FavoriteArtist.new
  end

  def create
    @favorite_artist = FavoriteArtist.create(fav_artist_params)

    redirect_to user_path(@favorite_artist.user_id)
  end

  private

  def fav_artist_params
    params.require(:favorite_artist).permit(:user_id, :artist_id)
  end

end
