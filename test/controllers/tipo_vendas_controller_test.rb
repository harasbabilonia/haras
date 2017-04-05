require 'test_helper'

class TipoVendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_venda = tipo_vendas(:one)
  end

  test "should get index" do
    get tipo_vendas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_venda_url
    assert_response :success
  end

  test "should create tipo_venda" do
    assert_difference('TipoVenda.count') do
      post tipo_vendas_url, params: { tipo_venda: { tipo: @tipo_venda.tipo } }
    end

    assert_redirected_to tipo_venda_url(TipoVenda.last)
  end

  test "should show tipo_venda" do
    get tipo_venda_url(@tipo_venda)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_venda_url(@tipo_venda)
    assert_response :success
  end

  test "should update tipo_venda" do
    patch tipo_venda_url(@tipo_venda), params: { tipo_venda: { tipo: @tipo_venda.tipo } }
    assert_redirected_to tipo_venda_url(@tipo_venda)
  end

  test "should destroy tipo_venda" do
    assert_difference('TipoVenda.count', -1) do
      delete tipo_venda_url(@tipo_venda)
    end

    assert_redirected_to tipo_vendas_url
  end
end
