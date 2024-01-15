class CoursesController < ApplicationController
  def index
    render json: Course.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created
    else
      render json: @course.errors, status: :unprocessable_entity
    end

  end

  private

  def course_params
    params.require(:course).permit(:name, :level, :teacher_id)
  end
end
