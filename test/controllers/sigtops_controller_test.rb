require 'test_helper'

class SigtopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sigtop = sigtops(:one)
  end

  test "should get index" do
    get sigtops_url, as: :json
    assert_response :success
  end

  test "should create sigtop" do
    assert_difference('Sigtop.count') do
      post sigtops_url, params: { sigtop: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show sigtop" do
    get sigtop_url(@sigtop), as: :json
    assert_response :success
  end

  test "should update sigtop" do
    patch sigtop_url(@sigtop), params: { sigtop: {  } }, as: :json
    assert_response 200
  end

  test "should destroy sigtop" do
    assert_difference('Sigtop.count', -1) do
      delete sigtop_url(@sigtop), as: :json
    end

    assert_response 204
  end
end
