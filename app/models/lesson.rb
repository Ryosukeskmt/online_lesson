class Lesson < ApplicationRecord
  mount_uploader :movie, MovieUploader
end
