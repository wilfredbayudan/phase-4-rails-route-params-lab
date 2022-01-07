class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.where("LOWER(last_name) = ? OR LOWER(first_name) = ?", params[:name].downcase, params[:name].downcase)
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
