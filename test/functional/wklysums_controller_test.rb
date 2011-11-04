require 'test_helper'

class WklysumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wklysums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wklysum" do
    assert_difference('Wklysum.count') do
      post :create, :wklysum => { }
    end

    assert_redirected_to wklysum_path(assigns(:wklysum))
  end

  test "should show wklysum" do
    get :show, :id => wklysums(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wklysums(:one).to_param
    assert_response :success
  end

  test "should update wklysum" do
    put :update, :id => wklysums(:one).to_param, :wklysum => { }
    assert_redirected_to wklysum_path(assigns(:wklysum))
  end

  test "should destroy wklysum" do
    assert_difference('Wklysum.count', -1) do
      delete :destroy, :id => wklysums(:one).to_param
    end

    assert_redirected_to wklysums_path
  end
end
