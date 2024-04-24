class HojaPacientesController < ApplicationController
  before_action :set_hoja_paciente, only: %i[ show edit update destroy ]

  # GET /hoja_pacientes or /hoja_pacientes.json
  def index
    @hoja_pacientes = HojaPaciente.all
  end

  # GET /hoja_pacientes/1 or /hoja_pacientes/1.json
  def show
  end

  # GET /hoja_pacientes/new
  def new
  #  @video.hoja_paciente_id = params[:hoja_paciente_id]
    @hoja_paciente = HojaPaciente.new
  #  @exploracion_fisica.hoja_paciente_id = params[:hoja_paciente_id]
    @hoja_paciente.numero_identificacion_paciente = params[:paciente_id]

  end

  # GET /hoja_pacientes/1/edit
  def edit
  end

  # POST /hoja_pacientes or /hoja_pacientes.json
  def create
    @hoja_paciente = HojaPaciente.new(hoja_paciente_params)
    respond_to do |format|
      if @hoja_paciente.save
        format.html { redirect_to hoja_paciente_url(@hoja_paciente), notice: "Historia clinica creada" }
        format.json { render :show, status: :created, location: @hoja_paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hoja_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hoja_pacientes/1 or /hoja_pacientes/1.json
  def update
    respond_to do |format|
      if @hoja_paciente.update(hoja_paciente_params)
        format.html { redirect_to hoja_paciente_url(@hoja_paciente), notice: "Historia clinica actualizada." }
        format.json { render :show, status: :ok, location: @hoja_paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hoja_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hoja_pacientes/1 or /hoja_pacientes/1.json
  def destroy
    @hoja_paciente.destroy!

    respond_to do |format|
      format.html { redirect_to hoja_pacientes_url, notice: "Historia clinica borrada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hoja_paciente
      @hoja_paciente = HojaPaciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hoja_paciente_params
      params.require(:hoja_paciente).permit(:numero_identificacion_paciente, :fecha, :cif, :objetivos_terapeuticos, :duracion_plan_trabajo)
    end
end
