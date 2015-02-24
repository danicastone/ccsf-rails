class CcsfRailsController < ApplicationController
  before_action :set_ccsf_rail, only: [:show, :edit, :update, :destroy]

  # GET /ccsf_rails
  # GET /ccsf_rails.json
  def index
    @ccsf_rails = CcsfRail.all
  end

  # GET /ccsf_rails/1
  # GET /ccsf_rails/1.json
  def show
  end

  # GET /ccsf_rails/new
  def new
    @ccsf_rail = CcsfRail.new
  end

  # GET /ccsf_rails/1/edit
  def edit
  end

  # POST /ccsf_rails
  # POST /ccsf_rails.json
  def create
    @ccsf_rail = CcsfRail.new(ccsf_rail_params)

    respond_to do |format|
      if @ccsf_rail.save
        format.html { redirect_to @ccsf_rail, notice: 'Ccsf rail was successfully created.' }
        format.json { render :show, status: :created, location: @ccsf_rail }
      else
        format.html { render :new }
        format.json { render json: @ccsf_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ccsf_rails/1
  # PATCH/PUT /ccsf_rails/1.json
  def update
    respond_to do |format|
      if @ccsf_rail.update(ccsf_rail_params)
        format.html { redirect_to @ccsf_rail, notice: 'Ccsf rail was successfully updated.' }
        format.json { render :show, status: :ok, location: @ccsf_rail }
      else
        format.html { render :edit }
        format.json { render json: @ccsf_rail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ccsf_rails/1
  # DELETE /ccsf_rails/1.json
  def destroy
    @ccsf_rail.destroy
    respond_to do |format|
      format.html { redirect_to ccsf_rails_url, notice: 'Ccsf rail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ccsf_rail
      @ccsf_rail = CcsfRail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ccsf_rail_params
      params.require(:ccsf_rail).permit(:index, :links, :about)
    end
end
