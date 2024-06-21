namespace :create_matches do
  desc "とりあえず文字列"
  # タスク名(create)を指定
  task create: :environment do
    create_all_match
  end

  task test: :environment do
    Rails.logger.debug "caaaaaaaaaaaaaaaaallllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll meee now!!!!"
  end

  EARTH_RADIUS_KM = 6378.137
  MATCH_DISTANCE = 10_000

  def self.create_all_match
    user_ids = User.pluck(:id)
    user_ids.each do |user_id|
      user = User.find(user_id)
      matched_user_ids = (user_ids - [user_id])
      matched_user_ids.each do |matched_user_id|
        matched_user = User.find(matched_user_id)
        if cal_distance(user.latitude, user.longitude, matched_user.latitude, matched_user.longitude) < MATCH_DISTANCE
          create_match(user_id, matched_user_id)
        end
      end
    end
  end

  def self.cal_distance(x1, y1, x2, y2)
    x1_rad = deg2rad(x1)
    y1_rad = deg2rad(y1)
    x2_rad = deg2rad(x2)
    y2_rad = deg2rad(y2)

    EARTH_RADIUS_KM * Math.acos(Math.sin(y1_rad) * Math.sin(y2_rad) + Math.cos(y1_rad) * Math.cos(y2_rad) * Math.cos(x2_rad - x1_rad))
  end

  def self.deg2rad(deg)
    deg * Math::PI / 180.0
  end

  def self.create_match(id1, id2)
    user1 = User.find(id1)
    user2 = User.find(id2)
    Match.create!(
      user_id: id1,
      matched_user_id: id2,
      match_latitude: user1.latitude,
      match_longitude: user1.longitude,
      created_at: Time.now,
      updated_at: Time.now
    )
    Match.create!(
      user_id: id2,
      matched_user_id: id1,
      match_latitude: user2.latitude,
      match_longitude: user2.longitude,
      created_at: Time.now,
      updated_at: Time.now
    )
  end
end
