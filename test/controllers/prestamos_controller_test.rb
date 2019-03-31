require 'test_helper'

class PrestamosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prestamo = prestamos(:one)
  end

  test "should get index" do
    get prestamos_url, as: :json
    assert_response :success
  end

  test "should create prestamo" do
    assert_difference('Prestamo.count') do
      post prestamos_url, params: { prestamo: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show prestamo" do
    get prestamo_url(@prestamo), as: :json
    assert_response :success
  end

  test "should update prestamo" do
    patch prestamo_url(@prestamo), params: { prestamo: {  } }, as: :json
    assert_response 200
  end

  test "should destroy prestamo" do
    assert_difference('Prestamo.count', -1) do
      delete prestamo_url(@prestamo), as: :json
    end

    assert_response 204
  end
end
