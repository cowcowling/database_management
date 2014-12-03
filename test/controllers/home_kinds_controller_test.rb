require 'test_helper'

class HomeKindsControllerTest < ActionController::TestCase
  setup do
    @home_kind = home_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_kind" do
    assert_difference('HomeKind.count') do
      post :create, home_kind: { age: @home_kind.age, customer_id: @home_kind.customer_id, gender: @home_kind.gender, income: @home_kind.income, marriage: @home_kind.marriage }
    end

    assert_redirected_to home_kind_path(assigns(:home_kind))
  end

  test "should show home_kind" do
    get :show, id: @home_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_kind
    assert_response :success
  end

  test "should update home_kind" do
    patch :update, id: @home_kind, home_kind: { age: @home_kind.age, customer_id: @home_kind.customer_id, gender: @home_kind.gender, income: @home_kind.income, marriage: @home_kind.marriage }
    assert_redirected_to home_kind_path(assigns(:home_kind))
  end

  test "should destroy home_kind" do
    assert_difference('HomeKind.count', -1) do
      delete :destroy, id: @home_kind
    end

    assert_redirected_to home_kinds_path
  end
end
