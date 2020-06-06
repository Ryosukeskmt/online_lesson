# == Schema Information
#
# Table name: mylessons
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :bigint
#  user_id    :bigint
#
# Foreign Keys
#
#  fk_rails_...  (lesson_id => lessons.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class MylessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
