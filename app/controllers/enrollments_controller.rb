class EnrollmentsController < ApplicationController
  before_action :set_enrollment, only: [:show]
  def index
    render json:  Enrollment.all
  end

  def show

  end

  def create
    @enrollment = Enrollment.new(enrollment_pararms)

    if @enrollment.save
      render json: @enrollment.student.name
    else
      puts "this is not being saved"
      render :new
    end
  end

  private
  def set_enrollment
    @enrollment = Enrollment.find_by[params[:id]]
  end

  def enrollment_pararms
    params.require(:enroll).permit(:course_id, :student_id)
  end
end
