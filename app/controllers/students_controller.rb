class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]
  rescue_from ActiveRecord::RecordNotDestroyed, with: :show_record_not_destroyed_error
  rescue_from ActiveRecord::RecordNotFound, with: :show_record_not_found_error
  rescue_from ActiveRecord::RecordNotSaved, with: :show_record_not_saved_error
  rescue_from ActiveRecord::RecordInvalid, with: :show_record_is_invalid_error

  def index
    render json: Student.all
  end

  def show
    render json: @student, status: :ok
  end

  def create
    @student = Student.new(student_params)
    @student.save!
    render json: @student, status: :created, location: @student
  end

  def update
    render json: "work in progress", status: :ok
  end

  def destroy
    @student.destroy!
  end

  private

  def set_student
    @student = Student.find!(params[:id])
  end

  def student_params
    params.require(:student).permit(:age, :name)
  end

  def show_record_not_destroyed_error
    render json: "Boss you cannot delete this ", status: :unprocessable_entity
  end

  def show_record_not_found_error(error)
    render json: "Boss there is no such resource available because #{error}", status: :not_found
  end

  def show_record_not_saved_error
    render json: "Boss the record is not being saved", status: :unprocessable_entity
  end

  def show_record_is_invalid_error(error)
    render json: "Boss, the input is bad!! #{error} ", status: :unprocessable_entity
  end
end
