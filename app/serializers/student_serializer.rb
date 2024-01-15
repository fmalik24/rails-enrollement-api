class StudentSerializer < ActiveModel::Serializer
  attributes :name, :year
  has_many :teachers
end

def year
  age > 22 ? "senior" : "freshman"
end

