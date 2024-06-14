# test/jobs/update_user_location_job_test.rb
require "test_helper"

class UpdateUserLocationJobTest < ActiveJob::TestCase
  def setup
    @user = users(:one)
  end

  test "job updates user location" do
    UpdateUserLocationJob.perform_now(@user.id, 40.7128, -74.0060)
    @user.reload
    assert_equal 40.7128, @user.latitude
    assert_equal -74.0060, @user.longitude
  end
end
