require 'test_helper'

class PlayerInLeaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_in_league = player_in_leagues(:one)
  end

  test "should get index" do
    get player_in_leagues_url
    assert_response :success
  end

  test "should get new" do
    get new_player_in_league_url
    assert_response :success
  end

  test "should create player_in_league" do
    assert_difference('PlayerInLeague.count') do
      post player_in_leagues_url, params: { player_in_league: { league_id: @player_in_league.league_id, player_id: @player_in_league.player_id } }
    end

    assert_redirected_to player_in_league_url(PlayerInLeague.last)
  end

  test "should show player_in_league" do
    get player_in_league_url(@player_in_league)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_in_league_url(@player_in_league)
    assert_response :success
  end

  test "should update player_in_league" do
    patch player_in_league_url(@player_in_league), params: { player_in_league: { league_id: @player_in_league.league_id, player_id: @player_in_league.player_id } }
    assert_redirected_to player_in_league_url(@player_in_league)
  end

  test "should destroy player_in_league" do
    assert_difference('PlayerInLeague.count', -1) do
      delete player_in_league_url(@player_in_league)
    end

    assert_redirected_to player_in_leagues_url
  end
end
