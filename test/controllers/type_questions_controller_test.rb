require 'test_helper'

class TypeQuestionsControllerTest < ActionController::TestCase
  setup do
    @type_question = type_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_question" do
    assert_difference('TypeQuestion.count') do
      post :create, type_question: { tq_answer: @type_question.tq_answer, tq_explanation_1: @type_question.tq_explanation_1, tq_explanation_2: @type_question.tq_explanation_2, tq_level: @type_question.tq_level, tq_number: @type_question.tq_number, tq_question: @type_question.tq_question, tq_related_concept_1: @type_question.tq_related_concept_1, tq_related_concept_2: @type_question.tq_related_concept_2, tq_related_concept_3: @type_question.tq_related_concept_3, tq_related_concept_4: @type_question.tq_related_concept_4, tq_type_number: @type_question.tq_type_number, tq_type_title: @type_question.tq_type_title }
    end

    assert_redirected_to type_question_path(assigns(:type_question))
  end

  test "should show type_question" do
    get :show, id: @type_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_question
    assert_response :success
  end

  test "should update type_question" do
    patch :update, id: @type_question, type_question: { tq_answer: @type_question.tq_answer, tq_explanation_1: @type_question.tq_explanation_1, tq_explanation_2: @type_question.tq_explanation_2, tq_level: @type_question.tq_level, tq_number: @type_question.tq_number, tq_question: @type_question.tq_question, tq_related_concept_1: @type_question.tq_related_concept_1, tq_related_concept_2: @type_question.tq_related_concept_2, tq_related_concept_3: @type_question.tq_related_concept_3, tq_related_concept_4: @type_question.tq_related_concept_4, tq_type_number: @type_question.tq_type_number, tq_type_title: @type_question.tq_type_title }
    assert_redirected_to type_question_path(assigns(:type_question))
  end

  test "should destroy type_question" do
    assert_difference('TypeQuestion.count', -1) do
      delete :destroy, id: @type_question
    end

    assert_redirected_to type_questions_path
  end
end
