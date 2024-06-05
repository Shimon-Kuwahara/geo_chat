require 'faker'

User.create!(
  name: "shimon",
  user_id: "test_user",
  profile: "This is a test user.",
  profile_image: Faker::Avatar.image(slug: "test_user", size: "100x100"),
  age: 20,
  academic_year: "3",
  department: "Computer Science",
  hometown: "Toyama",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: "testuser@example.com",
  password: 'foobar',  # ここでパスワードを設定します
  password_confirmation: 'foobar',  # パスワード確認
  created_at: Time.now,
  updated_at: Time.now
)

User.create!(
  name: "amane",
  user_id: "amane2",
  profile: "This is a test user.",
  profile_image: Faker::Avatar.image(slug: "test_user", size: "100x100"),
  age: 20,
  academic_year: "3",
  department: "Computer Science",
  hometown: "Kawagoe",
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: Faker::Internet.free_email,
  password: 'foobar02',  # ここでパスワードを設定します
  password_confirmation: 'foobar02',  # パスワード確認
  created_at: Time.now,
  updated_at: Time.now
)

# User.create!(
#   name: "watanabe",
#   user_id: "amane3",
#   profile: "This is a test user.",
#   profile_image: Faker::Avatar.image(slug: "test_user", size: "100x100"),
#   age: 20,
#   academic_year: "3",
#   department: "Computer Science",
#   hometown: "Kawagoe",
#   latitude: Faker::Address.latitude,
#   longitude: Faker::Address.longitude,
#   email: Faker::Internet.free_email,
#   password: 'foobar03',  # ここでパスワードを設定します
#   password_confirmation: 'foobar03',  # パスワード確認
#   created_at: Time.now,
#   updated_at: Time.now
# )

0.times do |i|
  User.create!(
    name: Faker::Name.name,
    user_id: "user_#{i + 1}",
    profile: Faker::Lorem.paragraph(sentence_count: 3),
    profile_image: Faker::Avatar.image(slug: "user_#{i + 1}", size: "100x100"),
    age: rand(18..25),
    academic_year: rand(1..4).to_s,
    department: Faker::Educator.subject,
    hometown: Faker::Address.city,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    email: Faker::Internet.unique.email,
    password: 'password123',  # ここでパスワードを設定します
    password_confirmation: 'password123',  # パスワード確認
    created_at: Time.now,
    updated_at: Time.now
  )
end

user_ids = User.pluck(:id)
10.times do
  user_id = user_ids.sample
  matched_user_id = (user_ids - [user_id]).sample  # 自己マッチを避ける
  Match.create!(
    user_id: user_id,
    matched_user_id: matched_user_id,
    match_latitude: Faker::Address.latitude,
    match_longitude: Faker::Address.longitude,
    created_at: Time.now,
    updated_at: Time.now
  )
end
