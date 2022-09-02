class StudentsController < ApplicationController

  def index
    if params[:name]
      name=params[:name].capitalize()
      @students=Student.where(first_name:name).or(Student.where(last_name:name))
      # '/students?name=kirby'
    else @students = Student.all
    end
    render json: @students
  end

  def show
    student=Student.find(params[:id])
    render json: student
  end

end
