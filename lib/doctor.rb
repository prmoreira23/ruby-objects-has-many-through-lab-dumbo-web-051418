class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    Appointment.all.collect {|appt| appt.patient }
  end
end
