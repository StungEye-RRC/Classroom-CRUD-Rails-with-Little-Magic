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

  # GET /students/new
  def new
  end
  # Load app/views/students/new.html.erb

  # POST /students
  def create
  end
  # No view, action will redirect or render.
end
