# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself].


# Pseudocode
# DEF class Song
# INIT class with  title of the song and artist
# DEF method play which sets instance variable play to true

# DEF class Playlist
# INIT class with song objects
#DEF method add which adds a songs to the end of playlist
# DEF method num_of_tracks which returns size of playlist list
# DEF method remove which removes song from playlist
# DEF method includes? which returns true if playlist contains given song
# DEF method play_all which sets variable play to true in all songs in the playlist
# DEF method display which print out all the songs in playlist

# Initial Solution

class Song
  attr_reader :title, :artist
  def initialize(title, artist)
    @title = title
    @artist = artist
    @play = false
  end

  def play
    @play = true
  end
end

class Playlist

  def initialize(*songs)
    @playlist = songs
  end

  def add(*songs)
    songs.each { |song| @playlist << song }
  end

  def num_of_tracks
    @playlist.size
  end

  def remove(song)
    @playlist.delete(song)
  end

  def includes?(song)
    @playlist.include?(song)
  end

  def play_all
    @playlist.each {|song| song.play }
  end

  def display
    @playlist.each {|song| puts "Song '#{song.title}' performed by #{song.artist}"}
  end

end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection