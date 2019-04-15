require "application_system_test_case"

class ContractsTest < ApplicationSystemTestCase
  setup do
    @contract = contracts(:one)
  end

  test "visiting the index" do
    visit contracts_url
    assert_selector "h1", text: "Contracts"
  end

  test "creating a Contract" do
    visit contracts_url
    click_on "New Contract"

    fill_in "Checkin", with: @contract.checkin
    fill_in "Checkout", with: @contract.checkout
    fill_in "Contract models", with: @contract.contract_models_id
    fill_in "Day payment", with: @contract.day_payment
    fill_in "Desconto", with: @contract.desconto
    fill_in "Parcelado", with: @contract.parcelado
    fill_in "Status", with: @contract.status
    fill_in "Valor", with: @contract.valor
    fill_in "Valor total", with: @contract.valor_total
    click_on "Create Contract"

    assert_text "Contract was successfully created"
    click_on "Back"
  end

  test "updating a Contract" do
    visit contracts_url
    click_on "Edit", match: :first

    fill_in "Checkin", with: @contract.checkin
    fill_in "Checkout", with: @contract.checkout
    fill_in "Contract models", with: @contract.contract_models_id
    fill_in "Day payment", with: @contract.day_payment
    fill_in "Desconto", with: @contract.desconto
    fill_in "Parcelado", with: @contract.parcelado
    fill_in "Status", with: @contract.status
    fill_in "Valor", with: @contract.valor
    fill_in "Valor total", with: @contract.valor_total
    click_on "Update Contract"

    assert_text "Contract was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract" do
    visit contracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract was successfully destroyed"
  end
end
