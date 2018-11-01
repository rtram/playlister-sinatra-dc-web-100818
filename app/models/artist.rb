class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    self.name.gsub(/ /, "-")
  end

  def self.find_by_slug(slug)
  unslug =  slug.gsub("-", " ")
  Artist.find_by name: "#{unslug}"
  end
end
