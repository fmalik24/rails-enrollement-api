class Student < ApplicationRecord
  validates "name", presence: true
  validates "age", presence: true,  numericality: { only_integer: true }
  has_many :enrollments
  has_many :courses, through: :enrollments

  has_and_belongs_to_many :teachers
end