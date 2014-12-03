require 'test_helper'

class BusinessKindsControllerTest < ActionController::TestCase
  setup do
    @business_kind = business_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_kind" do
    assert_difference('BusinessKind.count') do
      post :create, business_kind: { category: @business_kind.category, customer_id: @business_kind.customer_id, gross: @business_kind.gross, income: @business_kind.income }
    end

    assert_redirected_to business_kind_path(assigns(:business_kind))
  end

  test "should show business_kind" do
    get :show, id: @business_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_kind
    assert_response :success
  end

  test "should update business_kind" do
    patch :update, id: @business_kind, business_kind: { category: @business_kind.category, customer_id: @business_kind.customer_id, gross: @business_kind.gross, income: @business_kind.income }
    assert_redirected_to business_kind_path(assigns(:business_kind))
  end

  test "should destroy business_kind" do
    assert_difference('BusinessKind.count', -1) do
      delete :destroy, id: @business_kind
    end

    assert_redirected_to business_kinds_path
  end
end
