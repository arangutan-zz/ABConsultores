class CompromisesController < ApplicationController
  before_action :set_compromise, only: [:show, :edit, :update, :destroy]

  # GET /compromises
  # GET /compromises.json
  def index
    @compromises = Compromise.all


    respond_to do |format|
      format.html
      format.pdf  do
        pdf = CompromisesPdf.new(@compromises)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

  end

  # GET /compromises/1
  # GET /compromises/1.json
  def show

    respond_to do |format|
      format.html
      format.pdf  do
        pdf = CompromisePdf.new(@compromise)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

  end

  # GET /compromises/new
  def new
    @compromise = Compromise.new
  end

  # GET /compromises/1/edit
  def edit
  end

  # POST /compromises
  # POST /compromises.json
  def create
    @compromise = Compromise.new(compromise_params)

    respond_to do |format|
      if @compromise.save
        format.html { redirect_to compromises_url, notice: 'El compromiso se creo correctamente' }
        format.json { render :show, status: :created, location: @compromise }
      else
        format.html { render :new }
        format.json { render json: @compromise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compromises/1
  # PATCH/PUT /compromises/1.json
  def update
    respond_to do |format|
      if @compromise.update(compromise_params)
        format.html { redirect_to compromises_url, notice: 'El compromiso se actualizo correctamente' }
        format.json { render :show, status: :ok, location: @compromise }
      else
        format.html { render :edit }
        format.json { render json: @compromise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compromises/1
  # DELETE /compromises/1.json
  def destroy
    @compromise.destroy
    respond_to do |format|
      format.html { redirect_to compromises_url, notice: 'El compromiso se elimino correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compromise
      @compromise = Compromise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compromise_params
      params.require(:compromise).permit(:fecha_inicial, :correo, :fecha_limite, :compromisos, :stakeholder_id)
    end
end
