class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :update, :destroy, :update ]

  def index
    render json: Student.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end


  private

  def set_student
    @student = Student.find_by(params[:id])
  end

  def student_params
    params.require(:student).permit(:age, :name)
  end
end
