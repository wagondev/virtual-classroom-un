require 'test_helper'

class WorkteamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workteam = workteams(:one)
  end

  test "should get index" do
    get workteams_url
    assert_response :success
  end

  test "should get new" do
    get new_workteam_url
    assert_response :success
  end

  test "should create workteam" do
    assert_difference('Workteam.count') do
      post workteams_url, params: { workteam: { idGroup: @workteam.idGroup, idStudent: @workteam.idStudent, idWorkteam: @workteam.idWorkteam } }
    end

    assert_redirected_to workteam_url(Workteam.last)
  end

  test "should show workteam" do
    get workteam_url(@workteam)
    assert_response :success
  end

  test "should get edit" do
    get edit_workteam_url(@workteam)
    assert_response :success
  end

  test "should update workteam" do
    patch workteam_url(@workteam), params: { workteam: { idGroup: @workteam.idGroup, idStudent: @workteam.idStudent, idWorkteam: @workteam.idWorkteam } }
    assert_redirected_to workteam_url(@workteam)
  end

  test "should destroy workteam" do
    assert_difference('Workteam.count', -1) do
      delete workteam_url(@workteam)
    end

    assert_redirected_to workteams_url
  end
end
