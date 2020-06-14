# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#30件のレッスンデータを作成
if Rails.env == 'development'  #現在の動作環境を判定
  (1..30).each do |i| #Rangeオブジェクトで1-30までの数字を表示
    user = User.create(id: 99, email: "tanakanakanaka@gmail.com",  name: "田中はな")
    Lesson.create!(user_id: user.id, teacher_name: "田中はな", title: "タイトル#{i}", grade: "小学6年", subject: "算数・数学")
  end
end
