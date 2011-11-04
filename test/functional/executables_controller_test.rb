require 'test_helper'

class ExecutablesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:executables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create executable" do
    assert_difference('Executable.count') do
      post :create, :executable => { }
    end

    assert_redirected_to executable_path(assigns(:executable))
  end

  test "should show executable" do
    get :show, :id => executables(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => executables(:one).to_param
    assert_response :success
  end

  test "should update executable" do
    put :update, :id => executables(:one).to_param, :executable => { }
    assert_redirected_to executable_path(assigns(:executable))
  end

  test "should destroy executable" do
    assert_difference('Executable.count', -1) do
      delete :destroy, :id => executables(:one).to_param
    end

    assert_redirected_to executables_path
  end
end
