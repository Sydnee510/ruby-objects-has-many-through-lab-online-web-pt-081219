class Doctor 
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
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
   def patients 
     appointments.collect do |appointment|    
       appointment.patient
     end
 end 
  def new_appointment(date, patient)
    Appointment.new(self, date, patient,)
  end
end