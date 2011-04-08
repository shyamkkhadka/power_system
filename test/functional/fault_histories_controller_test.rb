require 'test_helper'

class FaultHistoriesControllerTest < ActionController::TestCase
  setup do
    @fault_history = fault_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fault_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fault_history" do
    assert_difference('FaultHistory.count') do
      post :create, :fault_history => @fault_history.attributes
    end

    assert_redirected_to fault_history_path(assigns(:fault_history))
  end

  test "should show fault_history" do
    get :show, :id => @fault_history.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fault_history.to_param
    assert_response :success
  end

  test "should update fault_history" do
    put :update, :id => @fault_history.to_param, :fault_history => @fault_history.attributes
    assert_redirected_to fault_history_path(assigns(:fault_history))
  end

  test "should destroy fault_history" do
    assert_difference('FaultHistory.count', -1) do
      delete :destroy, :id => @fault_history.to_param
    end

    assert_redirected_to fault_histories_path
  end
end
