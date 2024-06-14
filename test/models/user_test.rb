# test/models/user_test.rb
require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one) # fixturesを使ってユーザーをセットアップ
  end

  test "should update user location" do
    @user.update_location(40.7128, -74.0060)
    assert_equal 40.7128, @user.latitude
    assert_equal -74.0060, @user.longitude
  end
end
