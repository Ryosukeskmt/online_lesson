class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :grade
      t.string :subject
      t.string :title
      t.string :teacher_name

      t.timestamps
    end
  end
end
