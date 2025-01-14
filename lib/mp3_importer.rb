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
  
  def import
    files.each { |f| Song.new_by_filename(f)}
  end
end
    
    