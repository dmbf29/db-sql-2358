require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

class Doctor
  attr_accessor :id, :first_name, :last_name, :age, :specialty

  def initialize(attributes = {})
    @id         = attributes[:id] || attributes['id']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name  = attributes[:last_name] || attributes['last_name']
    @age        = attributes[:age] || attributes['age']
    @specialty  = attributes[:specialty] || attributes['specialty']
  end

end

# 🙅‍♀️ No more repository 🙅‍♀️ -> We write SQL instead
# @doctor_repository.all -> Doctor.all
# an array of doctor instances
