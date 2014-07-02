class TemasregulatoriosController < ApplicationController
  before_action :set_temasregulatorio, only: [:show, :edit, :update, :destroy]

  # GET /temasregulatorios
  # GET /temasregulatorios.json
  def index
    #@temasregulatorios = Temasregulatorio.all


    @temasregulatorios = Array.new

    current_user.empresa.stakeholders.all.each do |stakeholder|
      if stakeholder.temasregulatorios.count > 0
        @temasregulatorios = @temasregulatorios + stakeholder.temasregulatorios 
      end
    end

    respond_to do |format|
      format.html
      format.pdf  do
        pdf = TemasregulatoriosPdf.new(@temasregulatorios, current_user)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /temasregulatorios/1
  # GET /temasregulatorios/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf  do
        pdf = TemasregulatorioPdf.new(@temasregulatorio, current_user)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /temasregulatorios/new
  def new
    @temasregulatorio = Temasregulatorio.new
  end

  # GET /temasregulatorios/1/edit
  def edit
  end

  # POST /temasregulatorios
  # POST /temasregulatorios.json
  def create
    @temasregulatorio = Temasregulatorio.new(temasregulatorio_params)

    respond_to do |format|
      if @temasregulatorio.save
        format.html { redirect_to temasregulatorios_url, notice: 'El tema regulatorio fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @temasregulatorio }
      else
        format.html { render :new }
        format.json { render json: @temasregulatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temasregulatorios/1
  # PATCH/PUT /temasregulatorios/1.json
  def update
    respond_to do |format|
      if @temasregulatorio.update(temasregulatorio_params)
        format.html { redirect_to temasregulatorios_url, notice: 'El tema regulatorio fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @temasregulatorio }
      else
        format.html { render :edit }
        format.json { render json: @temasregulatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temasregulatorios/1
  # DELETE /temasregulatorios/1.json
  def destroy
    @temasregulatorio.destroy
    respond_to do |format|
      format.html { redirect_to temasregulatorios_url, notice: 'El tema regulatorio fue eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temasregulatorio
      @temasregulatorio = Temasregulatorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temasregulatorio_params
      params.require(:temasregulatorio).permit(:titulo, :resumen, :imagen, :stakeholder_id)
    end
end
