class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres


  def slug
    self.name.gsub(/ /, "-")
  end

  def self.find_by_slug(slug)
  unslug =  slug.gsub("-", " ")
  Song.find_by name: "#{unslug}"
  end
end
