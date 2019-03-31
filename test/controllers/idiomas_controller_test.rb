require 'test_helper'

class IdiomasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idioma = idiomas(:one)
  end

  test "should get index" do
    get idiomas_url, as: :json
    assert_response :success
  end

  test "should create idioma" do
    assert_difference('Idioma.count') do
      post idiomas_url, params: { idioma: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show idioma" do
    get idioma_url(@idioma), as: :json
    assert_response :success
  end

  test "should update idioma" do
    patch idioma_url(@idioma), params: { idioma: {  } }, as: :json
    assert_response 200
  end

  test "should destroy idioma" do
    assert_difference('Idioma.count', -1) do
      delete idioma_url(@idioma), as: :json
    end

    assert_response 204
  end
end
