require 'faker'

User.create!(
  name: 'admin',
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
  name: "第一エリア",
  piece_set_id: 1,
  location_north: 36.109821,
  location_south: 36.106622,
  location_east: 140.103903,
  location_west: 140.100169,
  image: "/assets/pieces/area1.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "第二エリア",
  piece_set_id: 1,
  location_north: 36.113230,
  location_south: 36.109595,
  location_east: 140.103366,
  location_west: 140.100276,
  image: "/assets/pieces/area2.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "第三エリア",
  piece_set_id: 1,
  location_north: 36.112103,
  location_south: 36.108413,
  location_east: 140.101364,
  location_west: 140.098860,
  image: "/assets/pieces/area3.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "一の矢宿舎エリア",
  piece_set_id: 1,
  location_north: 36.120407,
  location_south: 36.116762,
  location_east: 140.099538,
  location_west: 140.096265,
  image: "/assets/pieces/ichinoya.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "農林技術エリア",
  piece_set_id: 1,
  location_north: 36.120508,
  location_south: 36.117193,
  location_east: 140.095860,
  location_west: 140.093274,
  image: "/assets/pieces/nourin.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "実験センターエリア",
  piece_set_id: 1,
  location_north: 36.117465,
  location_south: 36.106004,
  location_east: 140.101991,
  location_west: 140.093890,
  image: "/assets/pieces/test_center.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "本部棟エリア",
  piece_set_id: 1,
  location_north: 36.112468,
  location_south: 36.111107,
  location_east: 140.104496,
  location_west: 140.103462,
  image: "/assets/pieces/honbu.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "大学会館エリア",
  piece_set_id: 1,
  location_north: 36.106105,
  location_south: 36.103974,
  location_east: 140.103274,
  location_west: 140.101303,
  image: "/assets/pieces/kaikan.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "体育・芸術エリア",
  piece_set_id: 1,
  location_north: 36.104303,
  location_south: 36.099957,
  location_east: 140.106446,
  location_west: 140.100663,
  image: "/assets/pieces/taigei.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "体育施設エリア",
  piece_set_id: 1,
  location_north: 36.105080,
  location_south: 36.099192,
  location_east: 140.109633,
  location_west: 140.105221,
  image: "/assets/pieces/sports_shisetsu.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "平カス",
  piece_set_id: 1,
  location_north: 36.099497,
  location_south: 36.098925,
  location_east: 140.103597,
  location_west: 140.103181,
  image: "/assets/pieces/hirakasu.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "平砂宿舎エリア",
  piece_set_id: 1,
  location_north: 36.098583,
  location_south: 36.095876,
  location_east: 140.105703,
  location_west: 140.102378,
  image: "/assets/pieces/hirasuna.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "追越宿舎エリア",
  piece_set_id: 1,
  location_north: 36.095475,
  location_south: 36.092622,
  location_east: 140.106448,
  location_west: 140.103617,
  image: "/assets/pieces/oikoshi.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "医学エリア",
  piece_set_id: 1,
  location_north: 36.095301,
  location_south: 36.090562,
  location_east: 140.103721,
  location_west: 140.099553,
  image: "/assets/pieces/igaku.png",
  created_at: Time.now,
  updated_at: Time.now
)

Piece.create!(
  name: "春日エリア",
  piece_set_id: 1,
  location_north: 36.088360,
  location_south: 36.084845,
  location_east: 140.107693,
  location_west: 140.104317,
  image: "/assets/pieces/kasuga.png",
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
