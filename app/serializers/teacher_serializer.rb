class TeacherSerializer < ActiveModel::Serializer
  attributes :name, :title
end

def title
  is_senior ? "AP Professor" : "Assistant Professor"
end
