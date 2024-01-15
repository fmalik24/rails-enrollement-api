class Teacher < ApplicationRecord
  validates "name", presence: true
  validates "is_senior", presence: true
  has_many :courses
  has_and_belongs_to_many :students
end
