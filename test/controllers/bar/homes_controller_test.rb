require "test_helper"

class Bar::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get bar_homes_top_url
    assert_response :success
  end
end
