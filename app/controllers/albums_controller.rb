class AlbumsController < ApplicationController
  def index
    # @albums = Album.all

    @singer = Singer.find(params[:id])
  end

  def create
    @album = Album.new(album_params)
    @album.save!
  end

  private
  def album_params
    params.require(:album).permit(:name, :song_count)
  end
end
