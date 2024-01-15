class CreateTeachers < ActiveRecord::Migration[7.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.boolean :is_senior

      t.timestamps
    end
  end
end
