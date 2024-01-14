class Student < ApplicationRecord
  has_many :courses, through: :enrollments

end