require 'test_helper'

class RegionManagersControllerTest < ActionController::TestCase
  setup do
    @region_manager = region_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:region_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region_manager" do
    assert_difference('RegionManager.count') do
      post :create, region_manager: { employee_id: @region_manager.employee_id, region_id: @region_manager.region_id }
    end

    assert_redirected_to region_manager_path(assigns(:region_manager))
  end

  test "should show region_manager" do
    get :show, id: @region_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region_manager
    assert_response :success
  end

  test "should update region_manager" do
    patch :update, id: @region_manager, region_manager: { employee_id: @region_manager.employee_id, region_id: @region_manager.region_id }
    assert_redirected_to region_manager_path(assigns(:region_manager))
  end

  test "should destroy region_manager" do
    assert_difference('RegionManager.count', -1) do
      delete :destroy, id: @region_manager
    end

    assert_redirected_to region_managers_path
  end
end
