class InfluencestakeholdersController < ApplicationController
  before_action :set_influencestakeholder, only: [:show, :edit, :update, :destroy]

  # GET /influencestakeholders
  # GET /influencestakeholders.json
  def index
    @influencestakeholders = Influencestakeholder.all
  end

  # GET /influencestakeholders/1
  # GET /influencestakeholders/1.json
  def show
  end

  # GET /influencestakeholders/new
  def new
    @influencestakeholder = Influencestakeholder.new
  end

  # GET /influencestakeholders/1/edit
  def edit
  end

  # POST /influencestakeholders
  # POST /influencestakeholders.json
  def create
    @influencestakeholder = Influencestakeholder.new(influencestakeholder_params)

    respond_to do |format|
      if @influencestakeholder.save
        format.html { redirect_to @influencestakeholder, notice: 'Influencestakeholder was successfully created.' }
        format.json { render :show, status: :created, location: @influencestakeholder }
      else
        format.html { render :new }
        format.json { render json: @influencestakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /influencestakeholders/1
  # PATCH/PUT /influencestakeholders/1.json
  def update
    respond_to do |format|
      if @influencestakeholder.update(influencestakeholder_params)
        format.html { redirect_to @influencestakeholder, notice: 'Influencestakeholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @influencestakeholder }
      else
        format.html { render :edit }
        format.json { render json: @influencestakeholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /influencestakeholders/1
  # DELETE /influencestakeholders/1.json
  def destroy
    @influencestakeholder.destroy
    respond_to do |format|
      format.html { redirect_to influencestakeholders_url, notice: 'Influencestakeholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_influencestakeholder
      @influencestakeholder = Influencestakeholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def influencestakeholder_params
      params.require(:influencestakeholder).permit(:stakeholder_id, :influence_id)
    end
end
