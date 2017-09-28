require 'test_helper'

class TeamInscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_inscription = team_inscriptions(:one)
  end

  test "should get index" do
    get team_inscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_team_inscription_url
    assert_response :success
  end

  test "should create team_inscription" do
    assert_difference('TeamInscription.count') do
      post team_inscriptions_url, params: { team_inscription: { rol: @team_inscription.rol } }
    end

    assert_redirected_to team_inscription_url(TeamInscription.last)
  end

  test "should show team_inscription" do
    get team_inscription_url(@team_inscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_inscription_url(@team_inscription)
    assert_response :success
  end

  test "should update team_inscription" do
    patch team_inscription_url(@team_inscription), params: { team_inscription: { rol: @team_inscription.rol } }
    assert_redirected_to team_inscription_url(@team_inscription)
  end

  test "should destroy team_inscription" do
    assert_difference('TeamInscription.count', -1) do
      delete team_inscription_url(@team_inscription)
    end

    assert_redirected_to team_inscriptions_url
  end
end
