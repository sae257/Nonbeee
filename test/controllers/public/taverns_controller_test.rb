require "test_helper"

class Public::TavernsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_taverns_new_url
    assert_response :success
  end

  test "should get index" do
    get public_taverns_index_url
    assert_response :success
  end

  test "should get show" do
    get public_taverns_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_taverns_edit_url
    assert_response :success
  end
end
