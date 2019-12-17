class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    filenames = Dir.chdir(@path) do | path |
      Dir.glob("*.mp3")
    end
    puts "names=#{filenames}"
    filenames
  end
  
  def import(song)
    Song.new_by_filename(song)
  end
end
    
    