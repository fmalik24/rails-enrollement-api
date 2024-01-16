class StudentsTeachersController < ApplicationController
  before_action :set_student
  rescue_from ActiveRecord::RecordNotUnique, with: :show_unique_errors
  # rescue_from NoMethodError, with: :show_record_not_found_errors

  def index
    puts "sheeeet i am here, right?"
    render json: @student, status: :ok
  end

  def create

    @teacher = Teacher.find_by(id: params[:teacher_id])
    @student.teachers << @teacher
    render json: @student, status: :created
  end

  private

  def set_student
    puts "the value of the params is #{params}"
    @student = Student.find_by(id: params[:student_id])
    unless @student
      render json: "No such student exists", status: :not_found
    end
  end

  def destroy
    @student.teachers.destroy(id: teacher_params[:id])
    render json: @student, status: :ok
  end

  def teacher_params
    params.require(:teacher).permit(:id)
  end

  def show_unique_errors(exception)
    render json: "boss, you are adding the same teacher again!!".to_json, status: :conflict
  end

  # def show_record_not_found_errors(exception)
  #   render json: "boss, no such student exists".to_json, status: :not_found
  # end

end
