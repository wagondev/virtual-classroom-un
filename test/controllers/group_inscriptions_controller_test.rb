require 'test_helper'

class GroupInscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_inscription = group_inscriptions(:one)
  end

  test "should get index" do
    get group_inscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_group_inscription_url
    assert_response :success
  end

  test "should create group_inscription" do
    assert_difference('GroupInscription.count') do
      post group_inscriptions_url, params: { group_inscription: { rol: @group_inscription.rol } }
    end

    assert_redirected_to group_inscription_url(GroupInscription.last)
  end

  test "should show group_inscription" do
    get group_inscription_url(@group_inscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_inscription_url(@group_inscription)
    assert_response :success
  end

  test "should update group_inscription" do
    patch group_inscription_url(@group_inscription), params: { group_inscription: { rol: @group_inscription.rol } }
    assert_redirected_to group_inscription_url(@group_inscription)
  end

  test "should destroy group_inscription" do
    assert_difference('GroupInscription.count', -1) do
      delete group_inscription_url(@group_inscription)
    end

    assert_redirected_to group_inscriptions_url
  end
end
