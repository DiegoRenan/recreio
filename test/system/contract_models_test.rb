require "application_system_test_case"

class ContractModelsTest < ApplicationSystemTestCase
  setup do
    @contract_model = contract_models(:one)
  end

  test "visiting the index" do
    visit contract_models_url
    assert_selector "h1", text: "Contract Models"
  end

  test "creating a Contract model" do
    visit contract_models_url
    click_on "New Contract Model"

    fill_in "Body", with: @contract_model.body
    fill_in "Title", with: @contract_model.title
    click_on "Create Contract model"

    assert_text "Contract model was successfully created"
    click_on "Back"
  end

  test "updating a Contract model" do
    visit contract_models_url
    click_on "Edit", match: :first

    fill_in "Body", with: @contract_model.body
    fill_in "Title", with: @contract_model.title
    click_on "Update Contract model"

    assert_text "Contract model was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract model" do
    visit contract_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract model was successfully destroyed"
  end
end
