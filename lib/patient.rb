# class Patient
#   attr_accessor :name
#   @@all = []
#   def initialize(name)
#     @name = name 
#     @@all << self
#   end
#   def self.all 
#     @@all
#   end
#   def appointments 
#     Appointment.all.select {|appointment| appointment.patient == self}
#   end
#   def doctors 
#     self.appointments.collect do |appointment|    
#       appointment.doctor
#     end
#   end
#   def new_appointment(date, doctor) 
#     Appointment.new(self, date, doctor)
#   end 
# end 
class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end