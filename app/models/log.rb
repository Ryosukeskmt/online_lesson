# == Schema Information
#
# Table name: logs
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :integer
#  user_id    :integer
#
class Log < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

end
