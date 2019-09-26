# code here!
class School 
  
  
  attr_accessor :roster, :add_student
  
  def initialize(roster)
    @roster = []
    @add_student = add_student
  end 
  
  def add_student
    @add_student
  end
  
  
end 

school = School.new("Bayside High School")

school.roster

school.add_student("Zach Morris", 9)





class School
    attr_accessor :name, :roster

    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade_level)
        roster[grade_level] ||= []
        roster[grade_level] << student_name
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        sorted = {}
        roster.each do |grade_level, student_name|
            sorted[grade_level] = student_name.sort
        end
        sorted
    end

end
