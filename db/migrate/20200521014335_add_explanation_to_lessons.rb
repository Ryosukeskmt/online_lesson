class AddExplanationToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :explanation, :text
  end
end
