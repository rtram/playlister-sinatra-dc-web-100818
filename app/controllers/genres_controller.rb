class GenresController < ApplicationController




    get "/genres" do
      @genres = Genre.all
      erb :"genres/index"
    end

    get "/genres/:slug" do
      slug = params["slug"]

      @genre = Genres.find_by_slug(slug)
          binding.pry
      @song = @genre.songs
      @artist = @genre.artists
      binding.pry
      erb :"genres/show"
    end

  end
