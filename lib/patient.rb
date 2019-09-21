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

  attr_reader :name, :appointment, :doctor

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
end