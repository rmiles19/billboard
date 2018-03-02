class SongsController < ApplicationController
  # before_action :set_artist
  # before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @song = @maginze.songs.new(song_params)

    if @song.save
      redirect_to magazine_songs_path(@magazine)
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to artists_path(@artist)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path
  end

  private
    # def set_artist
    #   @artist = Artist.find(params[:id])
    # end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title)
    end
end
