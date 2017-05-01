require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_tenant_url
    assert_response :success
  end

  test "should create tenant" do
    assert_difference('Tenant.count') do
      post tenants_url, params: { tenant: { cellphone: @tenant.cellphone, dateOfBirth: @tenant.dateOfBirth, email: @tenant.email, gender: @tenant.gender, idTenant: @tenant.idTenant, lastName: @tenant.lastName, name: @tenant.name, password: @tenant.password, telephone: @tenant.telephone } }
    end

    assert_redirected_to tenant_url(Tenant.last)
  end

  test "should show tenant" do
    get tenant_url(@tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenant_url(@tenant)
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { cellphone: @tenant.cellphone, dateOfBirth: @tenant.dateOfBirth, email: @tenant.email, gender: @tenant.gender, idTenant: @tenant.idTenant, lastName: @tenant.lastName, name: @tenant.name, password: @tenant.password, telephone: @tenant.telephone } }
    assert_redirected_to tenant_url(@tenant)
  end

  test "should destroy tenant" do
    assert_difference('Tenant.count', -1) do
      delete tenant_url(@tenant)
    end

    assert_redirected_to tenants_url
  end
end
