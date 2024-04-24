require "test_helper"

class ExploracionFisicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exploracion_fisica = exploracion_fisicas(:one)
  end

  test "should get index" do
    get exploracion_fisicas_url
    assert_response :success
  end

  test "should get new" do
    get new_exploracion_fisica_url
    assert_response :success
  end

  test "should create exploracion_fisica" do
    assert_difference("ExploracionFisica.count") do
      post exploracion_fisicas_url, params: { exploracion_fisica: { evaluacion_patron_funcional: @exploracion_fisica.evaluacion_patron_funcional, hoja_paciente_id: @exploracion_fisica.hoja_paciente_id, patron_movimiento: @exploracion_fisica.patron_movimiento } }
    end

    assert_redirected_to exploracion_fisica_url(ExploracionFisica.last)
  end

  test "should show exploracion_fisica" do
    get exploracion_fisica_url(@exploracion_fisica)
    assert_response :success
  end

  test "should get edit" do
    get edit_exploracion_fisica_url(@exploracion_fisica)
    assert_response :success
  end

  test "should update exploracion_fisica" do
    patch exploracion_fisica_url(@exploracion_fisica), params: { exploracion_fisica: { evaluacion_patron_funcional: @exploracion_fisica.evaluacion_patron_funcional, hoja_paciente_id: @exploracion_fisica.hoja_paciente_id, patron_movimiento: @exploracion_fisica.patron_movimiento } }
    assert_redirected_to exploracion_fisica_url(@exploracion_fisica)
  end

  test "should destroy exploracion_fisica" do
    assert_difference("ExploracionFisica.count", -1) do
      delete exploracion_fisica_url(@exploracion_fisica)
    end

    assert_redirected_to exploracion_fisicas_url
  end
end
