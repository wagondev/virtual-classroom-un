require 'test_helper'

class StudentCreateGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get create_groups" do
    get student_create_groups_create_groups_url
    assert_response :success
  end

end
