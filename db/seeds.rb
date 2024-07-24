require 'faker'

User.create!(
  name: 'shimon',
  user_id: 'test_user',
  profile: 'This is a test user.',
  profile_image: Faker::Avatar.image(slug: 'test', size: '100x100'),
  age: 20,
  academic_year: '3',
  department: 'Computer Science',
  hometown: 'Toyama',
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: Faker::Internet.free_email,
  password: 'foobar',
  password_confirmation: 'foobar',
  created_at: Time.now,
  updated_at: Time.now
)

User.create!(
  name: 'amane',
  user_id: 'amane2',
  profile: 'This is a test user.',
  profile_image: Faker::Avatar.image(slug: 'amane', size: '100x100'),
  age: 20,
  academic_year: '3',
  department: 'Computer Science',
  hometown: 'Kawagoe',
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: Faker::Internet.free_email,
  password: 'foobar02',
  password_confirmation: 'foobar02',
  created_at: Time.now,
  updated_at: Time.now
)

User.create!(
  name: 'kirita',
  user_id: 'kirita2',
  profile: 'This is a test user.',
  profile_image: Faker::Avatar.image(slug: 'kirita', size: '100x100'),
  age: 20,
  academic_year: '3',
  department: 'Computer Science',
  hometown: 'chiba',
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: Faker::Internet.free_email,
  password: 'foobar03', # ここでパスワードを設定します
  password_confirmation: 'foobar03', # パスワード確認
  created_at: Time.now,
  updated_at: Time.now
)

User.create!(
  name: 'hinano',
  user_id: 'hinano2',
  profile: 'This is a test user.',
  profile_image: Faker::Avatar.image(slug: 'hinano', size: '100x100'),
  age: 21,
  academic_year: '3',
  department: 'Computer Science',
  hometown: 'ibaraki',
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude,
  email: Faker::Internet.free_email,
  password: 'foobar04', # ここでパスワードを設定します
  password_confirmation: 'foobar04', # パスワード確認
  created_at: Time.now,
  updated_at: Time.now
)

PieceSet.create!(
  name: 'University of Tsukuba',
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: '本学',
  piece_set_id: 1,
  location_x: 420,
  location_y: 370,
  size_x: 250,
  size_y: 375,
  image: '/assets/2.png',
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: '体育芸術エリア',
  piece_set_id: 1,
  location_x: 350,
  location_y: 800,
  size_x: 300,
  size_y: 300,
  image: '/assets/3.png',
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: '医学エリア',
  piece_set_id: 1,
  location_x: 90,
  location_y: 1090,
  size_x: 190,
  size_y: 190,
  image: '/assets/4.png',
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: '春日エリア',
  piece_set_id: 1,
  location_x: 140,
  location_y: 1430,
  size_x: 80,
  size_y: 160,
  image: '/assets/5.png',
  created_at: Time.now,
  updated_at: Time.now
)

UserPiece.create!(
  user_id: 1,
  piece_id: 1,
  created_at: Time.now,
  updated_at: Time.now
)

Match.create!(
  user_id: 1,
  matched_user_id: 2,
  match_latitude: Faker::Address.latitude,
  match_longitude: Faker::Address.longitude,
  created_at: Time.now,
  updated_at: Time.now
)

Match.create!(
  user_id: 2,
  matched_user_id: 1,
  match_latitude: Faker::Address.latitude,
  match_longitude: Faker::Address.longitude,
  created_at: Time.now,
  updated_at: Time.now
)

# 10.times do |i|
#   User.create!(
#     name: Faker::Name.name,
#     user_id: "user_#{i + 1}",
#     profile: Faker::Lorem.paragraph(sentence_count: 3),
#     profile_image: Faker::Avatar.image(slug: "user_#{i + 1}", size: '100x100'),
#     age: rand(18..25),
#     academic_year: rand(1..4).to_s,
#     department: Faker::Educator.subject,
#     hometown: Faker::Address.city,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     email: Faker::Internet.unique.email,
#     password: 'password123',
#     password_confirmation: 'password123', # パスワード確認
#     created_at: Time.now,
#     updated_at: Time.now
#   )
# end

# user_ids = User.pluck(:id)
# 14.times do
#   user_id = 1
#   matched_user_id = (user_ids - [user_id]).sample # 自己マッチを避ける
#   Match.create!(
#     user_id:,
#     matched_user_id:,
#     match_latitude: Faker::Address.latitude,
#     match_longitude: Faker::Address.longitude,
#     created_at: Time.now,
#     updated_at: Time.now
#   )
# end

# 14.times do
#   user_id = 2
#   matched_user_id = (user_ids - [user_id]).sample # 自己マッチを避ける
#   Match.create!(
#     user_id:,
#     matched_user_id:,
#     match_latitude: Faker::Address.latitude,
#     match_longitude: Faker::Address.longitude,
#     created_at: Time.now,
#     updated_at: Time.now
#   )
# end
