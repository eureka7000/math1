class ActualQuestionsController < ApplicationController
  before_action :set_actual_question, only: [:show, :edit, :update, :destroy]

  # GET /actual_questions
  # GET /actual_questions.json
  def index
    @actual_questions = ActualQuestion.all
  end

  # GET /actual_questions/1
  # GET /actual_questions/1.json
  def show
  end

  # GET /actual_questions/new
  def new
    @actual_question = ActualQuestion.new
  end

  # GET /actual_questions/1/edit
  def edit
  end

  # POST /actual_questions
  # POST /actual_questions.json
  def create
    @actual_question = ActualQuestion.new(actual_question_params)

    respond_to do |format|
      if @actual_question.save
        format.html { redirect_to @actual_question, notice: 'Actual question was successfully created.' }
        format.json { render :show, status: :created, location: @actual_question }
      else
        format.html { render :new }
        format.json { render json: @actual_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actual_questions/1
  # PATCH/PUT /actual_questions/1.json
  def update
    respond_to do |format|
      if @actual_question.update(actual_question_params)
        format.html { redirect_to @actual_question, notice: 'Actual question was successfully updated.' }
        format.json { render :show, status: :ok, location: @actual_question }
      else
        format.html { render :edit }
        format.json { render json: @actual_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actual_questions/1
  # DELETE /actual_questions/1.json
  def destroy
    @actual_question.destroy
    respond_to do |format|
      format.html { redirect_to actual_questions_url, notice: 'Actual question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actual_question
      @actual_question = ActualQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actual_question_params
      params.require(:actual_question).permit(:aq_number, :aq_question, :aq_level, :aq_level_name, :aq_level_de1, :aq_level_de2, :aq_explanation_1_1, :aq_explanation_1_2, :aq_explanation_1_3, :aq_explanation_1_4, :aq_explanation_1_5, :aq_explanation_2_1, :aq_explanation_2_2, :aq_explanation_2_3, :aq_explanation_2_4, :aq_explanation_2_5, :aq_explanation_3_1, :aq_explanation_3_2, :aq_explanation_3_3, :aq_explanation_3_4, :aq_explanation_3_5, :aq_source_type, :aq_source_at)
    end
end
