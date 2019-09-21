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
    Appoinment.all.select {|appoinment| appoinment.patient == self}
  end
  end 
end 