require 'test_helper'

class RectifiersControllerTest < ActionController::TestCase
  setup do
    @rectifier = rectifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rectifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rectifier" do
    assert_difference('Rectifier.count') do
      post :create, :rectifier => @rectifier.attributes
    end

    assert_redirected_to rectifier_path(assigns(:rectifier))
  end

  test "should show rectifier" do
    get :show, :id => @rectifier.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @rectifier.to_param
    assert_response :success
  end

  test "should update rectifier" do
    put :update, :id => @rectifier.to_param, :rectifier => @rectifier.attributes
    assert_redirected_to rectifier_path(assigns(:rectifier))
  end

  test "should destroy rectifier" do
    assert_difference('Rectifier.count', -1) do
      delete :destroy, :id => @rectifier.to_param
    end

    assert_redirected_to rectifiers_path
  end
end
