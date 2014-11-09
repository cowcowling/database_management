require 'test_helper'

class HomekindsControllerTest < ActionController::TestCase
  setup do
    @homekind = homekinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homekinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homekind" do
    assert_difference('Homekind.count') do
      post :create, homekind: { age: @homekind.age, customer: @homekind.customer, gender: @homekind.gender, income: @homekind.income, marriage: @homekind.marriage }
    end

    assert_redirected_to homekind_path(assigns(:homekind))
  end

  test "should show homekind" do
    get :show, id: @homekind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homekind
    assert_response :success
  end

  test "should update homekind" do
    patch :update, id: @homekind, homekind: { age: @homekind.age, customer: @homekind.customer, gender: @homekind.gender, income: @homekind.income, marriage: @homekind.marriage }
    assert_redirected_to homekind_path(assigns(:homekind))
  end

  test "should destroy homekind" do
    assert_difference('Homekind.count', -1) do
      delete :destroy, id: @homekind
    end

    assert_redirected_to homekinds_path
  end
end
