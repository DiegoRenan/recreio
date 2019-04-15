require 'test_helper'

class ContractsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get contracts_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_url
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post contracts_url, params: { contract: { checkin: @contract.checkin, checkout: @contract.checkout, contract_models_id: @contract.contract_models_id, day_payment: @contract.day_payment, desconto: @contract.desconto, parcelado: @contract.parcelado, status: @contract.status, valor: @contract.valor, valor_total: @contract.valor_total } }
    end

    assert_redirected_to contract_url(Contract.last)
  end

  test "should show contract" do
    get contract_url(@contract)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_url(@contract)
    assert_response :success
  end

  test "should update contract" do
    patch contract_url(@contract), params: { contract: { checkin: @contract.checkin, checkout: @contract.checkout, contract_models_id: @contract.contract_models_id, day_payment: @contract.day_payment, desconto: @contract.desconto, parcelado: @contract.parcelado, status: @contract.status, valor: @contract.valor, valor_total: @contract.valor_total } }
    assert_redirected_to contract_url(@contract)
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete contract_url(@contract)
    end

    assert_redirected_to contracts_url
  end
end
