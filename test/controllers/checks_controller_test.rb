require 'test_helper'

class ChecksControllerTest < ActionController::TestCase
  setup do
    @check = checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check" do
    assert_difference('Check.count') do
      post :create, check: { first_name: @check.first_name, last_name: @check.last_name, timestamp: @check.timestamp }
    end

    assert_redirected_to check_path(assigns(:check))
  end

  test "should show check" do
    get :show, id: @check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check
    assert_response :success
  end

  test "should update check" do
    patch :update, id: @check, check: { first_name: @check.first_name, last_name: @check.last_name, timestamp: @check.timestamp }
    assert_redirected_to check_path(assigns(:check))
  end

  test "should destroy check" do
    assert_difference('Check.count', -1) do
      delete :destroy, id: @check
    end

    assert_redirected_to checks_path
  end
end
