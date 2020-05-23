# == Schema Information
#
# Table name: lessons
#
#  id           :bigint           not null, primary key
#  explanation  :text(65535)
#  grade        :string(255)
#  movie        :string(255)
#  subject      :string(255)
#  teacher_name :string(255)
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Lesson < ApplicationRecord
  has_many :comments

  mount_uploader :movie, MovieUploader

  validates :teacher_name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :movie, presence: true
  validates :grade, presence: true
  validates :subject, presence: true
end
