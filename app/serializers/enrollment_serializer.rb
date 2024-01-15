class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :is_high_level
  def is_high_level
    object.course.level > 2 ? true : false
  end

end
