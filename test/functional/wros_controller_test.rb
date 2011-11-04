require 'test_helper'

class WrosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wro" do
    assert_difference('Wro.count') do
      post :create, :wro => { }
    end

    assert_redirected_to wro_path(assigns(:wro))
  end

  test "should show wro" do
    get :show, :id => wros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wros(:one).to_param
    assert_response :success
  end

  test "should update wro" do
    put :update, :id => wros(:one).to_param, :wro => { }
    assert_redirected_to wro_path(assigns(:wro))
  end

  test "should destroy wro" do
    assert_difference('Wro.count', -1) do
      delete :destroy, :id => wros(:one).to_param
    end

    assert_redirected_to wros_path
  end
end
