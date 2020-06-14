class AddUserIdToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :user_id, :string
  end
end
