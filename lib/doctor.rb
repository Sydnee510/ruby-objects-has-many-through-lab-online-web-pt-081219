class Doctor 
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  def patients 
    self.appointments.collect do |appointment|    
      appointment.patient
    end
end 
end