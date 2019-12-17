class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def import
    filenames = Dir.chdir(@path) do | path |
      Dir.glob("*.mp3")
    end
    puts "names=#{filenames}"
    filenames
  end
end 
    
    