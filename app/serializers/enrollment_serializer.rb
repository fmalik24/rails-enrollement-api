class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :student_name, :course_name, :is_high_level
  def is_high_level
    object.course.level > 2 ? true : false
  end

  def student_name
    object.student.name
  end

  def course_name
    object.course.name
  end

end
