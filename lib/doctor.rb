class Doctor 
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 
  def appointments
  end
  def patients 
    self.patients.collect do |patient|    
      patient.appointments
    end
end 
end