class CreateMylessons < ActiveRecord::Migration[5.2]
  def change
    create_table :mylessons do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
      t.index [:user_id, :lesson_id], unique: true
    end
  end
end
