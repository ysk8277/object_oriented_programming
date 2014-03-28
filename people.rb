class Person
  
  attr_accessor :name

  # --------- 4  
  # def initialize(name)
  #   @name = name
  # end

  def greeting
    puts "Hi, my name is #{name}"
  end

end

class Student < Person

  def learn
    puts "I get it."
  end

end

class Instructor < Person
  
  def teach
    puts "Everything in Ruby is an Object."
  end

end

#---------6
instructor = Instructor.new
instructor.name = "Chris"
instructor.greeting

#---------7
student = Student.new
student.name = "Cristina" 
student.greeting

#--------8.1
instructor.teach
student.learn

#--------8.2
student.teach
instructor.learn
#error 'undefined method `teach' for #<Student:0x007fd34c113b00 @name="Cristina"> (NoMethodError)'
#method undefined because 'teach' method is only defined in Insturctor subclass.

