class Doctor 
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 
  def appointments
  end
  def patients 
    self.appointments.collect do |patient|    
      patient.patient
    end
end 
end