class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions do |t|
      t.references :user, foreign_key: true, null: false
      t.references :lesson, foreign_key: true, null: false

      t.timestamps
      t.index [:user_id, :lesson_id], unique: true
    end
  end
end
