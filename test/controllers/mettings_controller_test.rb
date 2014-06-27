require 'test_helper'

class MettingsControllerTest < ActionController::TestCase
  setup do
    @metting = mettings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mettings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metting" do
    assert_difference('Metting.count') do
      post :create, metting: { asistentes: @metting.asistentes, fecha: @metting.fecha, resumen: @metting.resumen, stakeholder_id: @metting.stakeholder_id, tema: @metting.tema }
    end

    assert_redirected_to metting_path(assigns(:metting))
  end

  test "should show metting" do
    get :show, id: @metting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metting
    assert_response :success
  end

  test "should update metting" do
    patch :update, id: @metting, metting: { asistentes: @metting.asistentes, fecha: @metting.fecha, resumen: @metting.resumen, stakeholder_id: @metting.stakeholder_id, tema: @metting.tema }
    assert_redirected_to metting_path(assigns(:metting))
  end

  test "should destroy metting" do
    assert_difference('Metting.count', -1) do
      delete :destroy, id: @metting
    end

    assert_redirected_to mettings_path
  end
end
