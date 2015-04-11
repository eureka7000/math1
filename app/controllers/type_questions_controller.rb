class TypeQuestionsController < ApplicationController
  before_action :set_type_question, only: [:show, :edit, :update, :destroy]

  # GET /type_questions
  # GET /type_questions.json
  def index
    @type_questions = TypeQuestion.all
  end

  # GET /type_questions/1
  # GET /type_questions/1.json
  def show
  end

  # GET /type_questions/new
  def new
    @type_question = TypeQuestion.new
  end

  # GET /type_questions/1/edit
  def edit
  end

  # POST /type_questions
  # POST /type_questions.json
  def create
    @type_question = TypeQuestion.new(type_question_params)

    respond_to do |format|
      if @type_question.save
        format.html { redirect_to @type_question, notice: 'Type question was successfully created.' }
        format.json { render :show, status: :created, location: @type_question }
      else
        format.html { render :new }
        format.json { render json: @type_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_questions/1
  # PATCH/PUT /type_questions/1.json
  def update
    respond_to do |format|
      if @type_question.update(type_question_params)
        format.html { redirect_to @type_question, notice: 'Type question was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_question }
      else
        format.html { render :edit }
        format.json { render json: @type_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_questions/1
  # DELETE /type_questions/1.json
  def destroy
    @type_question.destroy
    respond_to do |format|
      format.html { redirect_to type_questions_url, notice: 'Type question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_question
      @type_question = TypeQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_question_params
      params.require(:type_question).permit(:tq_number, :tq_question, :tq_level, :tq_answer, :tq_explanation_1, :tq_explanation_2, :tq_related_concept_1, :tq_related_concept_2, :tq_related_concept_3, :tq_related_concept_4, :tq_type_number, :tq_type_title)
    end
end
