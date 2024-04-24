require "application_system_test_case"

class TherapistsTest < ApplicationSystemTestCase
  setup do
    @therapist = therapists(:one)
  end

  test "visiting the index" do
    visit therapists_url
    assert_selector "h1", text: "Therapists"
  end

  test "should create therapist" do
    visit therapists_url
    click_on "New therapist"

    fill_in "Apellidos", with: @therapist.apellidos
    fill_in "Contraseña", with: @therapist.contraseña
    fill_in "Correo electronico", with: @therapist.correo_electronico
    fill_in "Nombres", with: @therapist.nombres
    fill_in "Numero identificacion", with: @therapist.numero_identificacion
    fill_in "Telefono", with: @therapist.telefono
    click_on "Create Therapist"

    assert_text "Therapist was successfully created"
    click_on "Back"
  end

  test "should update Therapist" do
    visit therapist_url(@therapist)
    click_on "Edit this therapist", match: :first

    fill_in "Apellidos", with: @therapist.apellidos
    fill_in "Contraseña", with: @therapist.contraseña
    fill_in "Correo electronico", with: @therapist.correo_electronico
    fill_in "Nombres", with: @therapist.nombres
    fill_in "Numero identificacion", with: @therapist.numero_identificacion
    fill_in "Telefono", with: @therapist.telefono
    click_on "Update Therapist"

    assert_text "Therapist was successfully updated"
    click_on "Back"
  end

  test "should destroy Therapist" do
    visit therapist_url(@therapist)
    click_on "Destroy this therapist", match: :first

    assert_text "Therapist was successfully destroyed"
  end
end
