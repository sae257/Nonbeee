require "test_helper"

class Bar::TweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bar_tweets_index_url
    assert_response :success
  end

  test "should get new" do
    get bar_tweets_new_url
    assert_response :success
  end

  test "should get edit" do
    get bar_tweets_edit_url
    assert_response :success
  end

  test "should get show" do
    get bar_tweets_show_url
    assert_response :success
  end
end
