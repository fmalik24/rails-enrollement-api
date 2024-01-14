class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.references :course, foreign_key: true
      t.references :student, foreign_key: true
      t.timestamps
      end
      add_index :enrollments, [:course_id, :student_id]
  end
end