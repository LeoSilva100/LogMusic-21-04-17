require 'test_helper'

class LookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get look_index_url
    assert_response :success
  end

end
