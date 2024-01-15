class AddUniqueIndexToStudentsTeachers < ActiveRecord::Migration[7.1]
  def change
    remove_index :students_teachers, [:student_id, :teacher_id]
    add_index :students_teachers, [:student_id, :teacher_id], unique: true
  end
end
