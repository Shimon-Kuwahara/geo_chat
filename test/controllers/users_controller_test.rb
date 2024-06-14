# test/controllers/users_controller_test.rb
require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    sign_in @user # ログインのシミュレーション
  end

  test "should get show" do
    get user_url(@user)
    assert_response :success
  end
end
