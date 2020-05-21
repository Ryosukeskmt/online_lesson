class Lesson < ApplicationRecord
  mount_uploader :movie, MovieUploader
  validates :teacher_name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :movie, presence: true
  validates :grade, presence: true
  validates :subject, presence: true
end
