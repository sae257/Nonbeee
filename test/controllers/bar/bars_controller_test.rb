require "test_helper"

class Bar::BarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bar_bars_index_url
    assert_response :success
  end

  test "should get new" do
    get bar_bars_new_url
    assert_response :success
  end

  test "should get edit" do
    get bar_bars_edit_url
    assert_response :success
  end

  test "should get show" do
    get bar_bars_show_url
    assert_response :success
  end
end
