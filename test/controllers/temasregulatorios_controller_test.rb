require 'test_helper'

class TemasregulatoriosControllerTest < ActionController::TestCase
  setup do
    @temasregulatorio = temasregulatorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temasregulatorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temasregulatorio" do
    assert_difference('Temasregulatorio.count') do
      post :create, temasregulatorio: { imagen: @temasregulatorio.imagen, resumen: @temasregulatorio.resumen, stakeholder_id: @temasregulatorio.stakeholder_id, titulo: @temasregulatorio.titulo }
    end

    assert_redirected_to temasregulatorio_path(assigns(:temasregulatorio))
  end

  test "should show temasregulatorio" do
    get :show, id: @temasregulatorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temasregulatorio
    assert_response :success
  end

  test "should update temasregulatorio" do
    patch :update, id: @temasregulatorio, temasregulatorio: { imagen: @temasregulatorio.imagen, resumen: @temasregulatorio.resumen, stakeholder_id: @temasregulatorio.stakeholder_id, titulo: @temasregulatorio.titulo }
    assert_redirected_to temasregulatorio_path(assigns(:temasregulatorio))
  end

  test "should destroy temasregulatorio" do
    assert_difference('Temasregulatorio.count', -1) do
      delete :destroy, id: @temasregulatorio
    end

    assert_redirected_to temasregulatorios_path
  end
end
