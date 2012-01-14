require 'test_helper'

class SecretariaControllerTest < ActionController::TestCase
  setup do
    @secretarium = secretaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secretaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secretarium" do
    assert_difference('Secretarium.count') do
      post :create, :secretarium => @secretarium.attributes
    end

    assert_redirected_to secretarium_path(assigns(:secretarium))
  end

  test "should show secretarium" do
    get :show, :id => @secretarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @secretarium
    assert_response :success
  end

  test "should update secretarium" do
    put :update, :id => @secretarium, :secretarium => @secretarium.attributes
    assert_redirected_to secretarium_path(assigns(:secretarium))
  end

  test "should destroy secretarium" do
    assert_difference('Secretarium.count', -1) do
      delete :destroy, :id => @secretarium
    end

    assert_redirected_to secretaria_path
  end
end
