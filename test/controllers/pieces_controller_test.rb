require "test_helper"

class PiecesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pieces_index_url
    assert_response :success
  end

  test "should get show" do
    get pieces_show_url
    assert_response :success
  end
end
