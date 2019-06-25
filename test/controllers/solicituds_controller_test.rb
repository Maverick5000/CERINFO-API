require 'test_helper'

class SolicitudsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get solicituds_url, as: :json
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post solicituds_url, params: { solicitud: { libro_id: @solicitud.libro_id, usuario_id: @solicitud.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show solicitud" do
    get solicitud_url(@solicitud), as: :json
    assert_response :success
  end

  test "should update solicitud" do
    patch solicitud_url(@solicitud), params: { solicitud: { libro_id: @solicitud.libro_id, usuario_id: @solicitud.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete solicitud_url(@solicitud), as: :json
    end

    assert_response 204
  end
end
