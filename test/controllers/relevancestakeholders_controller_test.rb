require 'test_helper'

class RelevancestakeholdersControllerTest < ActionController::TestCase
  setup do
    @relevancestakeholder = relevancestakeholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relevancestakeholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relevancestakeholder" do
    assert_difference('Relevancestakeholder.count') do
      post :create, relevancestakeholder: { relevance_id: @relevancestakeholder.relevance_id, stakeholder_id: @relevancestakeholder.stakeholder_id }
    end

    assert_redirected_to relevancestakeholder_path(assigns(:relevancestakeholder))
  end

  test "should show relevancestakeholder" do
    get :show, id: @relevancestakeholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relevancestakeholder
    assert_response :success
  end

  test "should update relevancestakeholder" do
    patch :update, id: @relevancestakeholder, relevancestakeholder: { relevance_id: @relevancestakeholder.relevance_id, stakeholder_id: @relevancestakeholder.stakeholder_id }
    assert_redirected_to relevancestakeholder_path(assigns(:relevancestakeholder))
  end

  test "should destroy relevancestakeholder" do
    assert_difference('Relevancestakeholder.count', -1) do
      delete :destroy, id: @relevancestakeholder
    end

    assert_redirected_to relevancestakeholders_path
  end
end
