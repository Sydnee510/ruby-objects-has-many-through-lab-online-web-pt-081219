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
    Appointment.all.collect do |appointment|    
      appointment.doctor
    end
  end
  def new_appointment(doctor, date) 
    Appointment.new(doctor, self, date)
  end 
end 