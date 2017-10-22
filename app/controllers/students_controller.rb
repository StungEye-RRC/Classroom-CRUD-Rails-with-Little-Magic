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
    @student = Student.new
  end
  # Load app/views/students/new.html.erb

  # POST /students
  def create
    @student = Student.new(params.require(:student).permit(:name))

    @student.save
    redirect_to @student # Show Action
  end
  # No view, action will redirect or render.
end
