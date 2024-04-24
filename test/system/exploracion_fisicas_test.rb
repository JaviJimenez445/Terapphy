require "application_system_test_case"

class ExploracionFisicasTest < ApplicationSystemTestCase
  setup do
    @exploracion_fisica = exploracion_fisicas(:one)
  end

  test "visiting the index" do
    visit exploracion_fisicas_url
    assert_selector "h1", text: "Exploracion fisicas"
  end

  test "should create exploracion fisica" do
    visit exploracion_fisicas_url
    click_on "New exploracion fisica"

    fill_in "Evaluacion patron funcional", with: @exploracion_fisica.evaluacion_patron_funcional
    fill_in "Hoja paciente", with: @exploracion_fisica.hoja_paciente_id
    fill_in "Patron movimiento", with: @exploracion_fisica.patron_movimiento
    click_on "Create Exploracion fisica"

    assert_text "Exploracion fisica was successfully created"
    click_on "Back"
  end

  test "should update Exploracion fisica" do
    visit exploracion_fisica_url(@exploracion_fisica)
    click_on "Edit this exploracion fisica", match: :first

    fill_in "Evaluacion patron funcional", with: @exploracion_fisica.evaluacion_patron_funcional
    fill_in "Hoja paciente", with: @exploracion_fisica.hoja_paciente_id
    fill_in "Patron movimiento", with: @exploracion_fisica.patron_movimiento
    click_on "Update Exploracion fisica"

    assert_text "Exploracion fisica was successfully updated"
    click_on "Back"
  end

  test "should destroy Exploracion fisica" do
    visit exploracion_fisica_url(@exploracion_fisica)
    click_on "Destroy this exploracion fisica", match: :first

    assert_text "Exploracion fisica was successfully destroyed"
  end
end
