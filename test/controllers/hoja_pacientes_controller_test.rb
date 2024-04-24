require "test_helper"

class HojaPacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hoja_paciente = hoja_pacientes(:one)
  end

  test "should get index" do
    get hoja_pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_hoja_paciente_url
    assert_response :success
  end

  test "should create hoja_paciente" do
    assert_difference("HojaPaciente.count") do
      post hoja_pacientes_url, params: { hoja_paciente: { cif: @hoja_paciente.cif, duracion_plan_trabajo: @hoja_paciente.duracion_plan_trabajo, fecha: @hoja_paciente.fecha, numero_identificacion_paciente: @hoja_paciente.numero_identificacion_paciente, objetivos_terapeuticos: @hoja_paciente.objetivos_terapeuticos } }
    end

    assert_redirected_to hoja_paciente_url(HojaPaciente.last)
  end

  test "should show hoja_paciente" do
    get hoja_paciente_url(@hoja_paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_hoja_paciente_url(@hoja_paciente)
    assert_response :success
  end

  test "should update hoja_paciente" do
    patch hoja_paciente_url(@hoja_paciente), params: { hoja_paciente: { cif: @hoja_paciente.cif, duracion_plan_trabajo: @hoja_paciente.duracion_plan_trabajo, fecha: @hoja_paciente.fecha, numero_identificacion_paciente: @hoja_paciente.numero_identificacion_paciente, objetivos_terapeuticos: @hoja_paciente.objetivos_terapeuticos } }
    assert_redirected_to hoja_paciente_url(@hoja_paciente)
  end

  test "should destroy hoja_paciente" do
    assert_difference("HojaPaciente.count", -1) do
      delete hoja_paciente_url(@hoja_paciente)
    end

    assert_redirected_to hoja_pacientes_url
  end
end
