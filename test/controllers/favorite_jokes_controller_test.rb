require "test_helper"

class FavoriteJokesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite_joke = favorite_jokes(:one)
  end

  test "should get index" do
    get favorite_jokes_url
    assert_response :success
  end

  test "should get new" do
    get new_favorite_joke_url
    assert_response :success
  end

  test "should create favorite_joke" do
    assert_difference("FavoriteJoke.count") do
      post favorite_jokes_url, params: { favorite_joke: { icon_url: @favorite_joke.icon_url, joke_id: @favorite_joke.joke_id, url: @favorite_joke.url, value: @favorite_joke.value } }
    end

    assert_redirected_to favorite_joke_url(FavoriteJoke.last)
  end

  test "should show favorite_joke" do
    get favorite_joke_url(@favorite_joke)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorite_joke_url(@favorite_joke)
    assert_response :success
  end

  test "should update favorite_joke" do
    patch favorite_joke_url(@favorite_joke), params: { favorite_joke: { icon_url: @favorite_joke.icon_url, joke_id: @favorite_joke.joke_id, url: @favorite_joke.url, value: @favorite_joke.value } }
    assert_redirected_to favorite_joke_url(@favorite_joke)
  end

  test "should destroy favorite_joke" do
    assert_difference("FavoriteJoke.count", -1) do
      delete favorite_joke_url(@favorite_joke)
    end

    assert_redirected_to favorite_jokes_url
  end
end
