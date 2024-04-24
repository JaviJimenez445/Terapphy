require "application_system_test_case"

class PacientesTest < ApplicationSystemTestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "visiting the index" do
    visit pacientes_url
    assert_selector "h1", text: "Pacientes"
  end

  test "should create paciente" do
    visit pacientes_url
    click_on "New paciente"

    fill_in "Apellidos", with: @paciente.apellidos
    fill_in "Contraseña", with: @paciente.contraseña
    fill_in "Correo electronico", with: @paciente.correo_electronico
    fill_in "Edad", with: @paciente.edad
    fill_in "Eps", with: @paciente.eps
    fill_in "Nombres", with: @paciente.nombres
    fill_in "Numero identificacion", with: @paciente.numero_identificacion
    fill_in "Ocupacion", with: @paciente.ocupacion
    fill_in "Telefono", with: @paciente.telefono
    fill_in "Tipo sangre", with: @paciente.tipo_sangre
    click_on "Crear Paciente"

    assert_text "Paciente was successfully created"
    click_on "Back"
  end

  test "should update Paciente" do
    visit paciente_url(@paciente)
    click_on "Edit this paciente", match: :first

    fill_in "Apellidos", with: @paciente.apellidos
    fill_in "Contraseña", with: @paciente.contraseña
    fill_in "Correo electronico", with: @paciente.correo_electronico
    fill_in "Edad", with: @paciente.edad
    fill_in "Eps", with: @paciente.eps
    fill_in "Nombres", with: @paciente.nombres
    fill_in "Numero identificacion", with: @paciente.numero_identificacion
    fill_in "Ocupacion", with: @paciente.ocupacion
    fill_in "Telefono", with: @paciente.telefono
    fill_in "Tipo sangre", with: @paciente.tipo_sangre
    click_on "Update Paciente"

    assert_text "Paciente was successfully updated"
    click_on "Back"
  end

  test "should destroy Paciente" do
    visit paciente_url(@paciente)
    click_on "Destroy this paciente", match: :first

    assert_text "Paciente was successfully destroyed"
  end
end
