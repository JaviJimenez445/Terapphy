class ExploracionFisicasController < ApplicationController
  before_action :set_exploracion_fisica, only: %i[ show edit update destroy ]

  # GET /exploracion_fisicas or /exploracion_fisicas.json
  def index
    @exploracion_fisicas = ExploracionFisica.all
  end

  # GET /exploracion_fisicas/1 or /exploracion_fisicas/1.json
  def show
  end

  # GET /exploracion_fisicas/new
  def new
    @exploracion_fisica = ExploracionFisica.new
    @exploracion_fisica.hoja_paciente_id = params[:hoja_paciente_id]
  end
  # GET /exploracion_fisicas/1/edit
  def edit
  end

  # POST /exploracion_fisicas or /exploracion_fisicas.json
  def create
    
    @exploracion_fisica = ExploracionFisica.new(exploracion_fisica_params)

    respond_to do |format|
      if @exploracion_fisica.save
        format.html { redirect_to exploracion_fisica_url(@exploracion_fisica), notice: "Exploracion fisica creada." }
        format.json { render :show, status: :created, location: @exploracion_fisica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exploracion_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exploracion_fisicas/1 or /exploracion_fisicas/1.json
  def update
    respond_to do |format|
      if @exploracion_fisica.update(exploracion_fisica_params)
        format.html { redirect_to exploracion_fisica_url(@exploracion_fisica), notice: "Exploracion fisica actualizada." }
        format.json { render :show, status: :ok, location: @exploracion_fisica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exploracion_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exploracion_fisicas/1 or /exploracion_fisicas/1.json
  def destroy
    @exploracion_fisica.destroy!

    respond_to do |format|
      format.html { redirect_to exploracion_fisicas_url, notice: "Exploracion borrada." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploracion_fisica
      @exploracion_fisica = ExploracionFisica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exploracion_fisica_params
      params.require(:exploracion_fisica).permit(:hoja_paciente_id, :patron_movimiento, :evaluacion_patron_funcional,:patron_movimiento1, :evaluacion_patron_funcional1, :patron_movimiento2, :evaluacion_patron_funcional2, :patron_movimiento3, :evaluacion_patron_funcional3, :patron_movimiento4, :evaluacion_patron_funcional4,:patron_movimiento5, :evaluacion_patron_funcional5, :patron_movimiento6, :evaluacion_patron_funcional6,:patron_movimiento7, :evaluacion_patron_funcional7, :patron_movimiento8, :evaluacion_patron_funcional8,:patron_movimiento9, :evaluacion_patron_funcional9, :patron_movimiento10, :evaluacion_patron_funcional10, :patron_movimiento11, :evaluacion_patron_funcional11, :patron_movimiento12, :evaluacion_patron_funcional12, :patron_movimiento13, :evaluacion_patron_funcional13, :patron_movimiento14, :evaluacion_patron_funcional14)
    end
end
