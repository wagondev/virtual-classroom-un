require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home_user" do
    get users_home_user_url
    assert_response :success
  end

end
