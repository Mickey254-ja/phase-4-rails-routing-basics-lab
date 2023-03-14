class StudentsController < ApplicationController
    def index
        byebug
        render json: students
    end

    def grades
        students = Studets.order(grade: :desc)
        render json: students 
    end

    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end
  
    def show
      student = Student.find_by(id: params[:id])
      render json: student
    end
  
end
