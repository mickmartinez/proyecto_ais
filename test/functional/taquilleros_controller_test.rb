require 'test_helper'

class TaquillerosControllerTest < ActionController::TestCase
  setup do
    @taquillero = taquilleros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taquilleros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taquillero" do
    assert_difference('Taquillero.count') do
      post :create, :taquillero => @taquillero.attributes
    end

    assert_redirected_to taquillero_path(assigns(:taquillero))
  end

  test "should show taquillero" do
    get :show, :id => @taquillero
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @taquillero
    assert_response :success
  end

  test "should update taquillero" do
    put :update, :id => @taquillero, :taquillero => @taquillero.attributes
    assert_redirected_to taquillero_path(assigns(:taquillero))
  end

  test "should destroy taquillero" do
    assert_difference('Taquillero.count', -1) do
      delete :destroy, :id => @taquillero
    end

    assert_redirected_to taquilleros_path
  end
end
