class ConceptPracticesController < ApplicationController
  before_action :set_concept_practice, only: [:show, :edit, :update, :destroy]

  # GET /concept_practices
  # GET /concept_practices.json
  def index
    @concept_practices = ConceptPractice.all
  end

  # GET /concept_practices/1
  # GET /concept_practices/1.json
  def show
  end

  # GET /concept_practices/new
  def new
    @concept_practice = ConceptPractice.new
  end

  # GET /concept_practices/1/edit
  def edit
  end

  # POST /concept_practices
  # POST /concept_practices.json
  def create
    @concept_practice = ConceptPractice.new(concept_practice_params)

    respond_to do |format|
      if @concept_practice.save
        format.html { redirect_to @concept_practice, notice: 'Concept practice was successfully created.' }
        format.json { render :show, status: :created, location: @concept_practice }
      else
        format.html { render :new }
        format.json { render json: @concept_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concept_practices/1
  # PATCH/PUT /concept_practices/1.json
  def update
    respond_to do |format|
      if @concept_practice.update(concept_practice_params)
        format.html { redirect_to @concept_practice, notice: 'Concept practice was successfully updated.' }
        format.json { render :show, status: :ok, location: @concept_practice }
      else
        format.html { render :edit }
        format.json { render json: @concept_practice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concept_practices/1
  # DELETE /concept_practices/1.json
  def destroy
    @concept_practice.destroy
    respond_to do |format|
      format.html { redirect_to concept_practices_url, notice: 'Concept practice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concept_practice
      @concept_practice = ConceptPractice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def concept_practice_params
      params.require(:concept_practice).permit(:cp_number, :cp_question, :cp_answer, :cp_explanation)
    end
end
