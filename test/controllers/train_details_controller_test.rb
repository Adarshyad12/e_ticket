require "test_helper"

class TrainDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_detail = train_details(:one)
  end

  test "should get index" do
    get train_details_url
    assert_response :success
  end

  test "should get new" do
    get new_train_detail_url
    assert_response :success
  end

  test "should create train_detail" do
    assert_difference("TrainDetail.count") do
      post train_details_url, params: { train_detail: {  } }
    end

    assert_redirected_to train_detail_url(TrainDetail.last)
  end

  test "should show train_detail" do
    get train_detail_url(@train_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_train_detail_url(@train_detail)
    assert_response :success
  end

  test "should update train_detail" do
    patch train_detail_url(@train_detail), params: { train_detail: {  } }
    assert_redirected_to train_detail_url(@train_detail)
  end

  test "should destroy train_detail" do
    assert_difference("TrainDetail.count", -1) do
      delete train_detail_url(@train_detail)
    end

    assert_redirected_to train_details_url
  end
end
