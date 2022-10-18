class StudentsController < ApplicationController

    def index   
        students = Student.all     
        render json: students
    end

    def grades  
        students = Student.all.order(grade: :desc)
        byebug
        render json: students
    end
    
    # def highest-grade   
    #     byebug
    #     student = Student.order(grade: :desc).first
    #     render json: student
    # end
end
