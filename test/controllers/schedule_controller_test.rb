require "test_helper"

class ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get posts" do
    get schedule_posts_url
    assert_response :success
  end
end
