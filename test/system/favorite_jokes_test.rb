require "application_system_test_case"

class FavoriteJokesTest < ApplicationSystemTestCase
  setup do
    @favorite_joke = favorite_jokes(:one)
  end

  test "visiting the index" do
    visit favorite_jokes_url
    assert_selector "h1", text: "Favorite jokes"
  end

  test "should create favorite joke" do
    visit favorite_jokes_url
    click_on "New favorite joke"

    fill_in "Icon url", with: @favorite_joke.icon_url
    fill_in "Joke", with: @favorite_joke.joke_id
    fill_in "Url", with: @favorite_joke.url
    fill_in "Value", with: @favorite_joke.value
    click_on "Create Favorite joke"

    assert_text "Favorite joke was successfully created"
    click_on "Back"
  end

  test "should update Favorite joke" do
    visit favorite_joke_url(@favorite_joke)
    click_on "Edit this favorite joke", match: :first

    fill_in "Icon url", with: @favorite_joke.icon_url
    fill_in "Joke", with: @favorite_joke.joke_id
    fill_in "Url", with: @favorite_joke.url
    fill_in "Value", with: @favorite_joke.value
    click_on "Update Favorite joke"

    assert_text "Favorite joke was successfully updated"
    click_on "Back"
  end

  test "should destroy Favorite joke" do
    visit favorite_joke_url(@favorite_joke)
    click_on "Destroy this favorite joke", match: :first

    assert_text "Favorite joke was successfully destroyed"
  end
end
