class RelevancesController < ApplicationController
  before_action :set_relevance, only: [:show, :edit, :update, :destroy]

  # GET /relevances
  # GET /relevances.json
  def index
    @relevances = Relevance.all
  end

  # GET /relevances/1
  # GET /relevances/1.json
  def show
  end

  # GET /relevances/new
  def new
    @relevance = Relevance.new
  end

  # GET /relevances/1/edit
  def edit
  end

  # POST /relevances
  # POST /relevances.json
  def create
    @relevance = Relevance.new(relevance_params)

    respond_to do |format|
      if @relevance.save
        format.html { redirect_to @relevance, notice: 'Relevance was successfully created.' }
        format.json { render :show, status: :created, location: @relevance }
      else
        format.html { render :new }
        format.json { render json: @relevance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relevances/1
  # PATCH/PUT /relevances/1.json
  def update
    respond_to do |format|
      if @relevance.update(relevance_params)
        format.html { redirect_to @relevance, notice: 'Relevance was successfully updated.' }
        format.json { render :show, status: :ok, location: @relevance }
      else
        format.html { render :edit }
        format.json { render json: @relevance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relevances/1
  # DELETE /relevances/1.json
  def destroy
    @relevance.destroy
    respond_to do |format|
      format.html { redirect_to relevances_url, notice: 'Relevance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relevance
      @relevance = Relevance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relevance_params
      params.require(:relevance).permit(:nombre)
    end
end
