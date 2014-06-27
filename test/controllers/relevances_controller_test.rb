require 'test_helper'

class RelevancesControllerTest < ActionController::TestCase
  setup do
    @relevance = relevances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relevances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relevance" do
    assert_difference('Relevance.count') do
      post :create, relevance: { nombre: @relevance.nombre }
    end

    assert_redirected_to relevance_path(assigns(:relevance))
  end

  test "should show relevance" do
    get :show, id: @relevance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relevance
    assert_response :success
  end

  test "should update relevance" do
    patch :update, id: @relevance, relevance: { nombre: @relevance.nombre }
    assert_redirected_to relevance_path(assigns(:relevance))
  end

  test "should destroy relevance" do
    assert_difference('Relevance.count', -1) do
      delete :destroy, id: @relevance
    end

    assert_redirected_to relevances_path
  end
end
