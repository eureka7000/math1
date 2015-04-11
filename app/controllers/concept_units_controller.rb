class ConceptUnitsController < ApplicationController
  before_action :set_concept_unit, only: [:show, :edit, :update, :destroy]

  # GET /concept_units
  # GET /concept_units.json
  def index
    @concept_units = ConceptUnit.all
  end

  # GET /concept_units/1
  # GET /concept_units/1.json
  def show
  end

  # GET /concept_units/new
  def new
    @concept_unit = ConceptUnit.new
  end

  # GET /concept_units/1/edit
  def edit
  end

  # POST /concept_units
  # POST /concept_units.json
  def create
    @concept_unit = ConceptUnit.new(concept_unit_params)

    respond_to do |format|
      if @concept_unit.save
        format.html { redirect_to @concept_unit, notice: 'Concept unit was successfully created.' }
        format.json { render :show, status: :created, location: @concept_unit }
      else
        format.html { render :new }
        format.json { render json: @concept_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concept_units/1
  # PATCH/PUT /concept_units/1.json
  def update
    respond_to do |format|
      if @concept_unit.update(concept_unit_params)
        format.html { redirect_to @concept_unit, notice: 'Concept unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @concept_unit }
      else
        format.html { render :edit }
        format.json { render json: @concept_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concept_units/1
  # DELETE /concept_units/1.json
  def destroy
    @concept_unit.destroy
    respond_to do |format|
      format.html { redirect_to concept_units_url, notice: 'Concept unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concept_unit
      @concept_unit = ConceptUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concept_unit_params
      params.require(:concept_unit).permit(:cu_number, :cu_title, :cu_description, :cu_level, :cu_concept, :cu_explanation_1, :cu_explanation_2, :cu_reference_1, :cu_reference_2, :exercise_blpr_1, :exercise_blan_1, :exercise_blpr_2, :exercise_blan_2, :exercise_blpr_3, :exercise_blan_3, :exercise_rwpr_1, :exercise_rwan_1, :exercise_rwpr_2, :exercise_rwan_2)
    end
end
