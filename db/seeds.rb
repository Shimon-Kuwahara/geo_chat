require 'faker'

100.times do |i|
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
    created_at: Time.now,
    updated_at: Time.now
  )
end

user_ids = User.pluck(:id)
2500.times do
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
