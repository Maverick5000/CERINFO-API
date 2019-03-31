require 'test_helper'

class LibrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get libros_url, as: :json
    assert_response :success
  end

  test "should create libro" do
    assert_difference('Libro.count') do
      post libros_url, params: { libro: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show libro" do
    get libro_url(@libro), as: :json
    assert_response :success
  end

  test "should update libro" do
    patch libro_url(@libro), params: { libro: {  } }, as: :json
    assert_response 200
  end

  test "should destroy libro" do
    assert_difference('Libro.count', -1) do
      delete libro_url(@libro), as: :json
    end

    assert_response 204
  end
end
