class Student < ApplicationRecord
  validates "name", presence: true
  validates "age", presence: true
  has_many :courses, through: :enrollments
  has_and_belongs_to_many :teachers
end