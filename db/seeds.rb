# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#50件のレッスンデータを作成
if Rails.env == 'development'  #現在の動作環境を判定
  (1..50).each do |i| #Rangeオブジェクトで1-50までの数字を表示
    Lesson.create(teacher_name: "#{i} 先生", title: "タイトル#{i}", grade: "小学5年", subject: "算数")
  end
end
