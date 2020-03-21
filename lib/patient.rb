class Patient
  
  attr_accessor :name, :appointment, :doctor
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor,date)
    Appointment.new(date,doctor,self)
  end
  
  def appointments
    Appointment.all.select {|a| a.patient == self}
    #binding.pry
  end
  
  def doctors
    self.appointments.collect {|a| a.doctor}
  end
  
end 