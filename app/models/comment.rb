# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text(65535)      not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :bigint
#  user_id    :string(255)
#
# Foreign Keys
#
#  fk_rails_...  (lesson_id => lessons.id)
#
class Comment < ApplicationRecord
  belongs_to :lesson

  validates :name, presence: true, length: { maximum: 10 }
  validates :comment, presence: true, length: { maximum: 400 }
end
