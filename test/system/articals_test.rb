require "application_system_test_case"

class ArticalsTest < ApplicationSystemTestCase
  setup do
    @artical = articals(:one)
  end

  test "visiting the index" do
    visit articals_url
    assert_selector "h1", text: "Articals"
  end

  test "should create artical" do
    visit articals_url
    click_on "New artical"

    click_on "Create Artical"

    assert_text "Artical was successfully created"
    click_on "Back"
  end

  test "should update Artical" do
    visit artical_url(@artical)
    click_on "Edit this artical", match: :first

    click_on "Update Artical"

    assert_text "Artical was successfully updated"
    click_on "Back"
  end

  test "should destroy Artical" do
    visit artical_url(@artical)
    click_on "Destroy this artical", match: :first

    assert_text "Artical was successfully destroyed"
  end
end
