class Course < ApplicationRecord
  belongs_to :teacher
  has_many :enrollments
  has_many :students, through: :enrollments

  validates :teacher_id, uniqueness: {message: "Can only have one teacher per course!"}

end
