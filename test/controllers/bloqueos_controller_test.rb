require 'test_helper'

class BloqueosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bloqueo = bloqueos(:one)
  end

  test "should get index" do
    get bloqueos_url, as: :json
    assert_response :success
  end

  test "should create bloqueo" do
    assert_difference('Bloqueo.count') do
      post bloqueos_url, params: { bloqueo: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show bloqueo" do
    get bloqueo_url(@bloqueo), as: :json
    assert_response :success
  end

  test "should update bloqueo" do
    patch bloqueo_url(@bloqueo), params: { bloqueo: {  } }, as: :json
    assert_response 200
  end

  test "should destroy bloqueo" do
    assert_difference('Bloqueo.count', -1) do
      delete bloqueo_url(@bloqueo), as: :json
    end

    assert_response 204
  end
end
