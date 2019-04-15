require 'test_helper'

class ContractModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_model = contract_models(:one)
  end

  test "should get index" do
    get contract_models_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_model_url
    assert_response :success
  end

  test "should create contract_model" do
    assert_difference('ContractModel.count') do
      post contract_models_url, params: { contract_model: { body: @contract_model.body, title: @contract_model.title } }
    end

    assert_redirected_to contract_model_url(ContractModel.last)
  end

  test "should show contract_model" do
    get contract_model_url(@contract_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_model_url(@contract_model)
    assert_response :success
  end

  test "should update contract_model" do
    patch contract_model_url(@contract_model), params: { contract_model: { body: @contract_model.body, title: @contract_model.title } }
    assert_redirected_to contract_model_url(@contract_model)
  end

  test "should destroy contract_model" do
    assert_difference('ContractModel.count', -1) do
      delete contract_model_url(@contract_model)
    end

    assert_redirected_to contract_models_url
  end
end
