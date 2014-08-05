require 'test_helper'

class SaleMaterialsControllerTest < ActionController::TestCase
  setup do
    @sale_material = sale_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_material" do
    assert_difference('SaleMaterial.count') do
      post :create, sale_material: { acuenta: @sale_material.acuenta, cantidad: @sale_material.cantidad, material_id: @sale_material.material_id, nombre: @sale_material.nombre, saldo: @sale_material.saldo, total: @sale_material.total }
    end

    assert_redirected_to sale_material_path(assigns(:sale_material))
  end

  test "should show sale_material" do
    get :show, id: @sale_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale_material
    assert_response :success
  end

  test "should update sale_material" do
    patch :update, id: @sale_material, sale_material: { acuenta: @sale_material.acuenta, cantidad: @sale_material.cantidad, material_id: @sale_material.material_id, nombre: @sale_material.nombre, saldo: @sale_material.saldo, total: @sale_material.total }
    assert_redirected_to sale_material_path(assigns(:sale_material))
  end

  test "should destroy sale_material" do
    assert_difference('SaleMaterial.count', -1) do
      delete :destroy, id: @sale_material
    end

    assert_redirected_to sale_materials_path
  end
end
