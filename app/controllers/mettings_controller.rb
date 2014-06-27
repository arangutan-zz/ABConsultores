class MettingsController < ApplicationController
  before_action :set_metting, only: [:show, :edit, :update, :destroy]

  # GET /mettings
  # GET /mettings.json
  def index
    @mettings = Metting.all

    respond_to do |format|
      format.html
      format.pdf  do
        pdf = MeetingsPdf.new(@mettings)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /mettings/1
  # GET /mettings/1.json
  def show

    respond_to do |format|
      format.html
      format.pdf  do
        pdf = MeetingPdf.new(@metting)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

  end

  # GET /mettings/new
  def new
    @metting = Metting.new
  end

  # GET /mettings/1/edit
  def edit
  end

  # POST /mettings
  # POST /mettings.json
  def create
    @metting = Metting.new(metting_params)

    respond_to do |format|
      if @metting.save
        format.html { redirect_to @metting, notice: 'Metting was successfully created.' }
        format.json { render :show, status: :created, location: @metting }
      else
        format.html { render :new }
        format.json { render json: @metting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mettings/1
  # PATCH/PUT /mettings/1.json
  def update
    respond_to do |format|
      if @metting.update(metting_params)
        format.html { redirect_to @metting, notice: 'Metting was successfully updated.' }
        format.json { render :show, status: :ok, location: @metting }
      else
        format.html { render :edit }
        format.json { render json: @metting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mettings/1
  # DELETE /mettings/1.json
  def destroy
    @metting.destroy
    respond_to do |format|
      format.html { redirect_to mettings_url, notice: 'Metting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metting
      @metting = Metting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metting_params
      params.require(:metting).permit(:tema, :fecha, :asistentes, :resumen, :stakeholder_id)
    end
end
