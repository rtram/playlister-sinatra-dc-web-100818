class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    self.name.gsub(/ /, "-")
  end

  def self.find_by_slug(slug)
  unslug =  slug.gsub("-", " ")
  unslug.split.map{|e| e.capitalize}.join(" ")

  Genre.find_by name: "#{unslug}"
  end
end
