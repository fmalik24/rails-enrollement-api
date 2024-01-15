class StudentsTeachersController < ApplicationController
  before_action :set_student
  rescue_from ActiveRecord::RecordNotUnique, with: :show_unique_errors

  def index
    render json:@student , status: :ok
  end

  def show

  end

  def create

    @teacher = Teacher.find_by(id: teacher_params[:id])
      @student.teachers << @teacher
      render json: @student, status: :created
  end

  private

  def set_student
    @student = Student.find_by(id: params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:id)
  end

  def show_unique_errors(exception)
    render json: "boss, you are adding the same teacher again!!".to_json, status: :conflict
  end

end
