class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :year
  has_many :teachers
  has_many :courses
end

def year
  age > 22 ? "senior" : "freshman"
end

