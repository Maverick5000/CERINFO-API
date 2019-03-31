require 'test_helper'

class EditorialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @editorial = editorials(:one)
  end

  test "should get index" do
    get editorials_url, as: :json
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post editorials_url, params: { editorial: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show editorial" do
    get editorial_url(@editorial), as: :json
    assert_response :success
  end

  test "should update editorial" do
    patch editorial_url(@editorial), params: { editorial: {  } }, as: :json
    assert_response 200
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete editorial_url(@editorial), as: :json
    end

    assert_response 204
  end
end
