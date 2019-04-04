require 'test_helper'

class PublicVideosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_videos_index_url
    assert_response :success
  end

end
