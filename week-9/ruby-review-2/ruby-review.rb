# Introduction to Inheritance

# Initial Solution

class Cohort
  attr_reader :students
  attr_reader :name
  attr_reader :p0_start_date
  attr_reader :immersive_start_date
  attr_reader :graduation_date
  attr_reader :email_list
  attr_reader :num_of_students

  def initialize(students, name, p0_start_date, email_list )
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = p0_start_date + 5443200
    @graduation_date = @immersive_start_date + 5443200
    @email_list = email_list
    @num_of_students = students.length
  end

  def add_student(student)
    @num_of_students += 1
    @students = @students.push(student)
  end

  def remove_student(student_name)
    index = students.index(student_name)
    students.delete_at(index)
  end

  def currently_in_phase()
    time = Time.new
    if time > @graduation_date
      print "Student has already graduated!"
    elsif time >= @immersive_start_date
      print "Student is currently in the on site phase"
    elsif time >= @p0_start_date
      print "Student is currently in phase 0"
    else
      print "Student hasn't started yet!"
    end
  end

  def graduated?()
    time = Time.new
    time > @graduation_date
  end
end

class LocalCohort < Cohort
  attr_reader :city

  def initialize(students, name, p0_start_date, email_list, city)
    super(students, name, p0_start_date, email_list)
    @city = city
  end
end

# Reflection

# What concepts did you review in this challenge?
# I reviewed Ruby classes and attribute accessors. I learned
# about sub classes and class inheritance.

# What is still confusing to you about Ruby?
# I don't think this was a particularly useful example of
# subclasses. I'd like to practice with a more involved
# answer that I can see the benefits of subclasses more
# clearly. This was a good demonstration of inheritance,
# but not necessarily of the subclass adding much of its
# own functionality.

# What are you going to study to get more prepared for Phase 1?
# Nothing, I'm starting tomorrow. I'm excited to learn more about
# classes and inheritance though.

