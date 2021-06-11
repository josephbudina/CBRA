require 'test_helper'

module AppComponent
  class GamesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @game = app_component_games(:one)
    end

    test "should get index" do
      get games_url
      assert_response :success
    end

    test "should get new" do
      get new_game_url
      assert_response :success
    end

    test "should create game" do
      assert_difference('Game.count') do
        post games_url, params: { game: {  location: @game. location, date: @game.date } }
      end

      assert_redirected_to game_url(Game.last)
    end

    test "should show game" do
      get game_url(@game)
      assert_response :success
    end

    test "should get edit" do
      get edit_game_url(@game)
      assert_response :success
    end

    test "should update game" do
      patch game_url(@game), params: { game: {  location: @game. location, date: @game.date } }
      assert_redirected_to game_url(@game)
    end

    test "should destroy game" do
      assert_difference('Game.count', -1) do
        delete game_url(@game)
      end

      assert_redirected_to games_url
    end
  end
end
