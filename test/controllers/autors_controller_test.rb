require 'test_helper'

class AutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @autor = autors(:one)
  end

  test "should get index" do
    get autors_url, as: :json
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post autors_url, params: { autor: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show autor" do
    get autor_url(@autor), as: :json
    assert_response :success
  end

  test "should update autor" do
    patch autor_url(@autor), params: { autor: {  } }, as: :json
    assert_response 200
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete autor_url(@autor), as: :json
    end

    assert_response 204
  end
end
