require 'test_helper'

class EngineerTypesControllerTest < ActionController::TestCase
  setup do
    @engineer_type = engineer_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engineer_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineer_type" do
    assert_difference('EngineerType.count') do
      post :create, :engineer_type => @engineer_type.attributes
    end

    assert_redirected_to engineer_type_path(assigns(:engineer_type))
  end

  test "should show engineer_type" do
    get :show, :id => @engineer_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @engineer_type.to_param
    assert_response :success
  end

  test "should update engineer_type" do
    put :update, :id => @engineer_type.to_param, :engineer_type => @engineer_type.attributes
    assert_redirected_to engineer_type_path(assigns(:engineer_type))
  end

  test "should destroy engineer_type" do
    assert_difference('EngineerType.count', -1) do
      delete :destroy, :id => @engineer_type.to_param
    end

    assert_redirected_to engineer_types_path
  end
end
