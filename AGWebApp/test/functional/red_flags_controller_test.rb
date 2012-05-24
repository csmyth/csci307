require 'test_helper'

class RedFlagsControllerTest < ActionController::TestCase
  setup do
    @red_flag = red_flags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:red_flags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create red_flag" do
    assert_difference('RedFlag.count') do
      post :create, red_flag: @red_flag.attributes
    end

    assert_redirected_to red_flag_path(assigns(:red_flag))
  end

  test "should show red_flag" do
    get :show, id: @red_flag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @red_flag
    assert_response :success
  end

  test "should update red_flag" do
    put :update, id: @red_flag, red_flag: @red_flag.attributes
    assert_redirected_to red_flag_path(assigns(:red_flag))
  end

  test "should destroy red_flag" do
    assert_difference('RedFlag.count', -1) do
      delete :destroy, id: @red_flag
    end

    assert_redirected_to red_flags_path
  end
end
