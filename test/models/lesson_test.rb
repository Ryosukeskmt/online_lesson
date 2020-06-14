# == Schema Information
#
# Table name: lessons
#
#  id           :bigint           not null, primary key
#  explanation  :text(65535)
#  grade        :string(255)
#  movie        :string(255)
#  status       :string(255)
#  subject      :string(255)
#  teacher_name :string(255)
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :string(255)
#
require 'test_helper'

class LessonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
