class Course < ApplicationRecord
  has_many :students, through: :enrollment
end
