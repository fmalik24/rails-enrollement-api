class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :is_high_level
  #has_many :course
  #has_many :student

  def is_high_level
    object.course.level > 2 ? true : false
  end

end
