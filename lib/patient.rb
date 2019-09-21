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
  # def songs 
  #   Song.all.select {|song| song.genre == self}
  # end
  # def artists 
  #   self.songs.collect do |song|    
  #     song.artist
  #   end
  # end
  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  # def appointments
   # Appointment.all.select {|appointment| appointment.doctor == self}
  # end
  # def patients 
  #   appointments.collect do |appointment|    
  #     appointment.patient
  #   end
  # end
  def doctors 
    self.appointments.collect do |appointment|    
      appointment.doctor
    end
  end
   def new_appointment(doctor, date) 
     Appointment.new(self, doctor, date)
   end 
end 