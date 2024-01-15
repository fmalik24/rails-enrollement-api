class AddUniqueCheckToCoursesTeacherId < ActiveRecord::Migration[7.1]
  def up
    remove_index :courses, :teacher_id  # Remove the existing index
    add_index :courses, :teacher_id, unique: true  # Add the new unique index
  end
end
