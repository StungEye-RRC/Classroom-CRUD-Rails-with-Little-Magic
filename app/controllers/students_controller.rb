class StudentsController < ApplicationController
  # GET /students
  # GET /
  def index
    @students = Student.order(:name)
  end
  # Load app/views/students/index.html.erb

  def show
    @student = Student.find(params[:id])
  end
  # Load app/views/students/show.html.erb
end
