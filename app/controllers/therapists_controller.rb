class TherapistsController < ApplicationController
  before_action :set_therapist, only: %i[ show edit update destroy ]
  before_action :authenticate_therapist!

  # GET /therapists or /therapists.json

  def index
    @therapists = Therapist.all
    @pacientes = Paciente.all
  end
  def new_hoja_paciente
    @pacientes = Paciente.all
    @hoja_paciente = HojaPaciente.new
  end

  # GET /therapists/1 or /therapists/1.json
  def show
  end

  # GET /therapists/new
  def new
    @therapist = Therapist.new
  end

  # GET /therapists/1/edit
  def edit
  end

  # POST /therapists or /therapists.json
  def create
    @therapist = Therapist.new(therapist_params)

    respond_to do |format|
      if @therapist.save
        format.html { redirect_to therapist_url(@therapist), notice: "Terapeuta creado." }
        format.json { render :show, status: :created, location: @therapist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @therapist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /therapists/1 or /therapists/1.json
  def update
    respond_to do |format|
      if @therapist.update(therapist_params)
        format.html { redirect_to therapist_url(@therapist), notice: "Terapeuta Actualizado." }
        format.json { render :show, status: :ok, location: @therapist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @therapist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /therapists/1 or /therapists/1.json
  def destroy
    @therapist.destroy!

    respond_to do |format|
      format.html { redirect_to therapists_url, notice: "Terapeuta modificado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_therapist
      @therapist = Therapist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def therapist_params
      params.require(:therapist).permit(:numero_identificacion, :nombres, :apellidos, :telefono, :correo_electronico, :contraseña)
    end
end
