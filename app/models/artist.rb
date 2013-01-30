class Artist < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :band_id
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  belongs_to :band

  has_many :authored_songs, :class_name => 'Song', :foreign_key => :author_id
  has_many :performed_songs, :through => :band, :source => :recordings

  def self.authored_song_hash
    artists = Artist.includes(:authored_songs)
    hash = {}
    artists.each do |artist|
      hash[artist] = artist.authored_songs
    end
    hash
  end
end