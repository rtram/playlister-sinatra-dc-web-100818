require "pry"

class ArtistsController < ApplicationController


  get "/artists" do
    @artists = Artist.all
    binding.pry
    erb :"artist/index"
  end
end
