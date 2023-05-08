require "application_system_test_case"

class TrainDetailsTest < ApplicationSystemTestCase
  setup do
    @train_detail = train_details(:one)
  end

  test "visiting the index" do
    visit train_details_url
    assert_selector "h1", text: "Train details"
  end

  test "should create train detail" do
    visit train_details_url
    click_on "New train detail"

    click_on "Create Train detail"

    assert_text "Train detail was successfully created"
    click_on "Back"
  end

  test "should update Train detail" do
    visit train_detail_url(@train_detail)
    click_on "Edit this train detail", match: :first

    click_on "Update Train detail"

    assert_text "Train detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Train detail" do
    visit train_detail_url(@train_detail)
    click_on "Destroy this train detail", match: :first

    assert_text "Train detail was successfully destroyed"
  end
end
