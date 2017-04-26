require 'test_helper'

class MailBoxControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mail_box_index_url
    assert_response :success
  end

end
