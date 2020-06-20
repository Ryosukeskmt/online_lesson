# == Schema Information
#
# Table name: impressions
#
#  id            :bigint           not null, primary key
#  understanding :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  lesson_id     :bigint           not null
#  user_id       :bigint           not null
#
# Foreign Keys
#
#  fk_rails_...  (lesson_id => lessons.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class ImpressionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
