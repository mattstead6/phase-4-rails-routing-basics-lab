class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        o = Student.all.order(grade: :desc)
        render json: o
    end


    def highest_grade
        students = Student.all.order(grade: :desc).first
        render json: students
    end

end
