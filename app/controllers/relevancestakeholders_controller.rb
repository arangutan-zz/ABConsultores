class RelevancestakeholdersController < ApplicationController
  before_action :set_relevancestakeholder, only: [:show, :edit, :update, :destroy]

  # GET /relevancestakeholders
  # GET /relevancestakeholders.json
  def index
    @relevancestakeholders = Relevancestakeholder.all
  end

  # GET /relevancestakeholders/1
  # GET /relevancestakeholders/1.json
  def show
  end

  # GET /relevancestakeholders/new
  def new
    @relevancestakeholder = Relevancestakeholder.new
  end

  # GET /relevancestakeholders/1/edit
  def edit
  end

  # POST /relevancestakeholders
  # POST /relevancestakeholders.json
  def create
    @relevancestakeholder = Relevancestakeholder.new(relevancestakeholder_params)

    respond_to do |format|
      if @relevancestakeholder.save
        format.html { redirect_to @relevancestakeholder, notice: 'Relevancestakeholder was successfully created.' }
        format.json { render :show, status: :created, location: @relevancestakeholder }
      else
        format.html { render :new }
        format.json { render json: @relevancestakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relevancestakeholders/1
  # PATCH/PUT /relevancestakeholders/1.json
  def update
    respond_to do |format|
      if @relevancestakeholder.update(relevancestakeholder_params)
        format.html { redirect_to @relevancestakeholder, notice: 'Relevancestakeholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @relevancestakeholder }
      else
        format.html { render :edit }
        format.json { render json: @relevancestakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relevancestakeholders/1
  # DELETE /relevancestakeholders/1.json
  def destroy
    @relevancestakeholder.destroy
    respond_to do |format|
      format.html { redirect_to relevancestakeholders_url, notice: 'Relevancestakeholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relevancestakeholder
      @relevancestakeholder = Relevancestakeholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relevancestakeholder_params
      params.require(:relevancestakeholder).permit(:stakeholder_id, :relevance_id)
    end
end
