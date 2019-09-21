class Patient
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end
  def self.all 
    @@all
  end
  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  def doctors 
     def genres                      
    self.songs.collect do |song|    
      song.genre
    end
  end
end 