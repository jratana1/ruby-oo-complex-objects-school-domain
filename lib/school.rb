# code here!
class School
    attr_accessor :roster
    attr_accessor :school

    def initialize (school = "", roster = {})
        @roster = roster
        @school = school
    end

    def add_student(name, grade)
        @roster[grade] != nil ? @roster[grade] << "#{name}" : (@roster[grade] = [] @roster[grade] << "#{name}")
        # if @roster[grade] != nil 
        #      @roster[grade] << "#{name}"
        # else
        #     @roster[grade] = []
        #     @roster[grade] << "#{name}"
        # end
    end    

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |grade, student_list|
            @roster[grade] = student_list.sort
        end
        @roster
    end
end
