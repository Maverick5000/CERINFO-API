require 'test_helper'

class MultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multum = multa(:one)
  end

  test "should get index" do
    get multa_url, as: :json
    assert_response :success
  end

  test "should create multum" do
    assert_difference('Multum.count') do
      post multa_url, params: { multum: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show multum" do
    get multum_url(@multum), as: :json
    assert_response :success
  end

  test "should update multum" do
    patch multum_url(@multum), params: { multum: {  } }, as: :json
    assert_response 200
  end

  test "should destroy multum" do
    assert_difference('Multum.count', -1) do
      delete multum_url(@multum), as: :json
    end

    assert_response 204
  end
end
