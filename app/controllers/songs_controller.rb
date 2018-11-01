class SongsController < ApplicationController



  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/:slug" do
    slug = params["slug"]
    @song = Song.find_by_slug(slug)
    @artist = @song.artist
    @genre = @song.genres
    # binding.pry
    erb :"songs/show"
  end


end
