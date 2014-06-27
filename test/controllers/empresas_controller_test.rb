require 'test_helper'

class EmpresasControllerTest < ActionController::TestCase
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post :create, empresa: { ciudad: @empresa.ciudad, direccion_contacto: @empresa.direccion_contacto, email_contacto: @empresa.email_contacto, imagen: @empresa.imagen, nit: @empresa.nit, nombre_comercial: @empresa.nombre_comercial, nombre_contacto: @empresa.nombre_contacto, pagina_web: @empresa.pagina_web, pais: @empresa.pais, razon_social: @empresa.razon_social, representante_legal: @empresa.representante_legal, telefono_contacto: @empresa.telefono_contacto }
    end

    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should show empresa" do
    get :show, id: @empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa
    assert_response :success
  end

  test "should update empresa" do
    patch :update, id: @empresa, empresa: { ciudad: @empresa.ciudad, direccion_contacto: @empresa.direccion_contacto, email_contacto: @empresa.email_contacto, imagen: @empresa.imagen, nit: @empresa.nit, nombre_comercial: @empresa.nombre_comercial, nombre_contacto: @empresa.nombre_contacto, pagina_web: @empresa.pagina_web, pais: @empresa.pais, razon_social: @empresa.razon_social, representante_legal: @empresa.representante_legal, telefono_contacto: @empresa.telefono_contacto }
    assert_redirected_to empresa_path(assigns(:empresa))
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete :destroy, id: @empresa
    end

    assert_redirected_to empresas_path
  end
end
