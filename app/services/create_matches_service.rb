# app/services/create_matches_service.rb

class CreateMatchesService < ApplicationController
  EARTH_RADIUS_KM = 6378.137

  def self.call
    new.call
  end

  def call
    user_ids = User.pluck(:id, :latitude, :longitude, :match_distance)
    user_ids.each do |user|
      user_id, user_lat, user_lon, user_match_distance = user
      matched_users = user_ids.reject { |u| u[0] == user_id }

      matched_users.each do |matched_user|
        matched_user_id, matched_user_lat, matched_user_lon, matched_user_match_distance = matched_user
        match_dis = [user_match_distance, matched_user_match_distance].min

        if user_lat.nil? || user_lon.nil? || matched_user_lat.nil? || matched_user_lon.nil?
          next
        end

        if cal_distance(user_lat, user_lon, matched_user_lat, matched_user_lon) < match_dis
          create_match(user_id, matched_user_id, user_lat, user_lon)
        end
      end
    end
  end

  private

  def cal_distance(lat1, lon1, lat2, lon2)
    lat1_rad = deg2rad(lat1)
    lon1_rad = deg2rad(lon1)
    lat2_rad = deg2rad(lat2)
    lon2_rad = deg2rad(lon2)

    dlon = lon2_rad - lon1_rad
    dlat = lat2_rad - lat1_rad

    a = Math.sin(dlat / 2) ** 2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon / 2) ** 2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    EARTH_RADIUS_KM * c
  end

  def deg2rad(deg)
    deg * Math::PI / 180.0
  end

  def create_match(user_id, matched_user_id, lat, lon)
    Match.create!(
      user_id: user_id,
      matched_user_id: matched_user_id,
      match_latitude: lat,
      match_longitude: lon,
      created_at: Time.now,
      updated_at: Time.now
    )
  end
end
