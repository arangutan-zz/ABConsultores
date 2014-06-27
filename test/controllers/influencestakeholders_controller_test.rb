require 'test_helper'

class InfluencestakeholdersControllerTest < ActionController::TestCase
  setup do
    @influencestakeholder = influencestakeholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:influencestakeholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create influencestakeholder" do
    assert_difference('Influencestakeholder.count') do
      post :create, influencestakeholder: { influence_id: @influencestakeholder.influence_id, stakeholder_id: @influencestakeholder.stakeholder_id }
    end

    assert_redirected_to influencestakeholder_path(assigns(:influencestakeholder))
  end

  test "should show influencestakeholder" do
    get :show, id: @influencestakeholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @influencestakeholder
    assert_response :success
  end

  test "should update influencestakeholder" do
    patch :update, id: @influencestakeholder, influencestakeholder: { influence_id: @influencestakeholder.influence_id, stakeholder_id: @influencestakeholder.stakeholder_id }
    assert_redirected_to influencestakeholder_path(assigns(:influencestakeholder))
  end

  test "should destroy influencestakeholder" do
    assert_difference('Influencestakeholder.count', -1) do
      delete :destroy, id: @influencestakeholder
    end

    assert_redirected_to influencestakeholders_path
  end
end
