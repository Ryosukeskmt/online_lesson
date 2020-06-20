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
class Lesson < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :mylessons, dependent: :destroy
  has_many :impressions, dependent: :destroy
  
  # マイレッスンに追加してあるか判定 → view側で呼び出し
  def mylesson_by?(user)
    mylessons.where(user_id: user.id).exists?
  end

  def impression_by?(user)
    impressions.where(user_id: user.id).exists?
  end

  mount_uploader :movie, MovieUploader

  validates :teacher_name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 20 }
  validates :movie, presence: true
  validates :grade, presence: true
  validates :subject, presence: true
end
