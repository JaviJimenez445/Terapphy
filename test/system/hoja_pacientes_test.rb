require "application_system_test_case"

class HojaPacientesTest < ApplicationSystemTestCase
  setup do
    @hoja_paciente = hoja_pacientes(:one)
  end

  test "visiting the index" do
    visit hoja_pacientes_url
    assert_selector "h1", text: "Hoja pacientes"
  end

  test "should create hoja paciente" do
    visit hoja_pacientes_url
    click_on "New hoja paciente"

    fill_in "Cif", with: @hoja_paciente.cif
    fill_in "Duracion plan trabajo", with: @hoja_paciente.duracion_plan_trabajo
    fill_in "Fecha", with: @hoja_paciente.fecha
    fill_in "Numero identificacion paciente", with: @hoja_paciente.numero_identificacion_paciente
    fill_in "Objetivos terapeuticos", with: @hoja_paciente.objetivos_terapeuticos
    click_on "Create Hoja paciente"

    assert_text "Hoja paciente was successfully created"
    click_on "Back"
  end

  test "should update Hoja paciente" do
    visit hoja_paciente_url(@hoja_paciente)
    click_on "Edit this hoja paciente", match: :first

    fill_in "Cif", with: @hoja_paciente.cif
    fill_in "Duracion plan trabajo", with: @hoja_paciente.duracion_plan_trabajo
    fill_in "Fecha", with: @hoja_paciente.fecha
    fill_in "Numero identificacion paciente", with: @hoja_paciente.numero_identificacion_paciente
    fill_in "Objetivos terapeuticos", with: @hoja_paciente.objetivos_terapeuticos
    click_on "Update Hoja paciente"

    assert_text "Hoja paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Hoja paciente" do
    visit hoja_paciente_url(@hoja_paciente)
    click_on "Destroy this hoja paciente", match: :first

    assert_text "Hoja paciente was successfully destroyed"
  end
end
