class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]

  # GET /interests
  # GET /interests.json
  def index
    #@interests = Interest.all


    @interests = Array.new

    current_user.empresa.stakeholders.all.each do |stakeholder|
      if stakeholder.interest.count > 0
        @interests = @interests + stakeholder.interest 
      end
    end

    respond_to do |format|
      format.html
      format.pdf  do
        pdf = InterestsPdf.new(@interests, current_user)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end

  end

  # GET /interests/1
  # GET /interests/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf  do
        pdf = InterestPdf.new(@interest, current_user)
        send_data pdf.render, filename: "prueba.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  # GET /interests/new
  def new
    @interest = Interest.new
  end

  # GET /interests/1/edit
  def edit
  end

  # POST /interests
  # POST /interests.json
  def create
    @interest = Interest.new(interest_params)

    respond_to do |format|
      if @interest.save
        format.html { redirect_to interests_url, notice: 'El tema de interes fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @interest }
      else
        format.html { render :new }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interests/1
  # PATCH/PUT /interests/1.json
  def update
    respond_to do |format|
      if @interest.update(interest_params)
        format.html { redirect_to interests_url, notice: 'El tema de interes fue actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @interest }
      else
        format.html { render :edit }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest.destroy
    respond_to do |format|
      format.html { redirect_to interests_url, notice: 'El tema de interes fue eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest
      @interest = Interest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_params
      params.require(:interest).permit(:tema, :informacion, :imagen, :stakeholder_id)
    end
end
