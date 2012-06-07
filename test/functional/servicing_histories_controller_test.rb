require 'test_helper'

class ServicingHistoriesControllerTest < ActionController::TestCase
  setup do
    @servicing_history = servicing_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicing_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicing_history" do
    assert_difference('ServicingHistory.count') do
      post :create, :servicing_history => @servicing_history.attributes
    end

    assert_redirected_to servicing_history_path(assigns(:servicing_history))
  end

  test "should show servicing_history" do
    get :show, :id => @servicing_history.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @servicing_history.to_param
    assert_response :success
  end

  test "should update servicing_history" do
    put :update, :id => @servicing_history.to_param, :servicing_history => @servicing_history.attributes
    assert_redirected_to servicing_history_path(assigns(:servicing_history))
  end

  test "should destroy servicing_history" do
    assert_difference('ServicingHistory.count', -1) do
      delete :destroy, :id => @servicing_history.to_param
    end

    assert_redirected_to servicing_histories_path
  end
end
