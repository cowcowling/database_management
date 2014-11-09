require 'test_helper'

class BusinesskindsControllerTest < ActionController::TestCase
  setup do
    @businesskind = businesskinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businesskinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businesskind" do
    assert_difference('Businesskind.count') do
      post :create, businesskind: { category: @businesskind.category, customer: @businesskind.customer, gross: @businesskind.gross, income: @businesskind.income }
    end

    assert_redirected_to businesskind_path(assigns(:businesskind))
  end

  test "should show businesskind" do
    get :show, id: @businesskind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @businesskind
    assert_response :success
  end

  test "should update businesskind" do
    patch :update, id: @businesskind, businesskind: { category: @businesskind.category, customer: @businesskind.customer, gross: @businesskind.gross, income: @businesskind.income }
    assert_redirected_to businesskind_path(assigns(:businesskind))
  end

  test "should destroy businesskind" do
    assert_difference('Businesskind.count', -1) do
      delete :destroy, id: @businesskind
    end

    assert_redirected_to businesskinds_path
  end
end
