class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :student

  validates_uniqueness_of :student_id, scope: :course_id

  def as_json_with_names
    {
      id: id,
      student_name: student.name,
      course_name: course.name,
      created_at: created_at,
      updated_at: updated_at
      # Add other attributes as needed
    }
  end

end
