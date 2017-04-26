require 'test_helper'

class ProfileFriendControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profile_friend_index_url
    assert_response :success
  end

end
