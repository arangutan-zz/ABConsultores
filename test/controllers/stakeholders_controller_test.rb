require 'test_helper'

class StakeholdersControllerTest < ActionController::TestCase
  setup do
    @stakeholder = stakeholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stakeholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stakeholder" do
    assert_difference('Stakeholder.count') do
      post :create, stakeholder: { apellido: @stakeholder.apellido, cargo: @stakeholder.cargo, ciudad: @stakeholder.ciudad, departamento: @stakeholder.departamento, dependencia: @stakeholder.dependencia, dimension: @stakeholder.dimension, disposicion: @stakeholder.disposicion, empresa: @stakeholder.empresa, empresa_id: @stakeholder.empresa_id, expectativas: @stakeholder.expectativas, imagen: @stakeholder.imagen, impacto: @stakeholder.impacto, movimiento_politico: @stakeholder.movimiento_politico, necesidades_afiliacion: @stakeholder.necesidades_afiliacion, necesidades_logro: @stakeholder.necesidades_logro, necesidades_poder: @stakeholder.necesidades_poder, nombre: @stakeholder.nombre, pais: @stakeholder.pais, perfil: @stakeholder.perfil }
    end

    assert_redirected_to stakeholder_path(assigns(:stakeholder))
  end

  test "should show stakeholder" do
    get :show, id: @stakeholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stakeholder
    assert_response :success
  end

  test "should update stakeholder" do
    patch :update, id: @stakeholder, stakeholder: { apellido: @stakeholder.apellido, cargo: @stakeholder.cargo, ciudad: @stakeholder.ciudad, departamento: @stakeholder.departamento, dependencia: @stakeholder.dependencia, dimension: @stakeholder.dimension, disposicion: @stakeholder.disposicion, empresa: @stakeholder.empresa, empresa_id: @stakeholder.empresa_id, expectativas: @stakeholder.expectativas, imagen: @stakeholder.imagen, impacto: @stakeholder.impacto, movimiento_politico: @stakeholder.movimiento_politico, necesidades_afiliacion: @stakeholder.necesidades_afiliacion, necesidades_logro: @stakeholder.necesidades_logro, necesidades_poder: @stakeholder.necesidades_poder, nombre: @stakeholder.nombre, pais: @stakeholder.pais, perfil: @stakeholder.perfil }
    assert_redirected_to stakeholder_path(assigns(:stakeholder))
  end

  test "should destroy stakeholder" do
    assert_difference('Stakeholder.count', -1) do
      delete :destroy, id: @stakeholder
    end

    assert_redirected_to stakeholders_path
  end
end
