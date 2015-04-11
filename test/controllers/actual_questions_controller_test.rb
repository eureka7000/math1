require 'test_helper'

class ActualQuestionsControllerTest < ActionController::TestCase
  setup do
    @actual_question = actual_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actual_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actual_question" do
    assert_difference('ActualQuestion.count') do
      post :create, actual_question: { aq_explanation_1_1: @actual_question.aq_explanation_1_1, aq_explanation_1_2: @actual_question.aq_explanation_1_2, aq_explanation_1_3: @actual_question.aq_explanation_1_3, aq_explanation_1_4: @actual_question.aq_explanation_1_4, aq_explanation_1_5: @actual_question.aq_explanation_1_5, aq_explanation_2_1: @actual_question.aq_explanation_2_1, aq_explanation_2_2: @actual_question.aq_explanation_2_2, aq_explanation_2_3: @actual_question.aq_explanation_2_3, aq_explanation_2_4: @actual_question.aq_explanation_2_4, aq_explanation_2_5: @actual_question.aq_explanation_2_5, aq_explanation_3_1: @actual_question.aq_explanation_3_1, aq_explanation_3_2: @actual_question.aq_explanation_3_2, aq_explanation_3_3: @actual_question.aq_explanation_3_3, aq_explanation_3_4: @actual_question.aq_explanation_3_4, aq_explanation_3_5: @actual_question.aq_explanation_3_5, aq_level: @actual_question.aq_level, aq_level_de1: @actual_question.aq_level_de1, aq_level_de2: @actual_question.aq_level_de2, aq_level_name: @actual_question.aq_level_name, aq_number: @actual_question.aq_number, aq_question: @actual_question.aq_question, aq_source_at: @actual_question.aq_source_at, aq_source_type: @actual_question.aq_source_type }
    end

    assert_redirected_to actual_question_path(assigns(:actual_question))
  end

  test "should show actual_question" do
    get :show, id: @actual_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actual_question
    assert_response :success
  end

  test "should update actual_question" do
    patch :update, id: @actual_question, actual_question: { aq_explanation_1_1: @actual_question.aq_explanation_1_1, aq_explanation_1_2: @actual_question.aq_explanation_1_2, aq_explanation_1_3: @actual_question.aq_explanation_1_3, aq_explanation_1_4: @actual_question.aq_explanation_1_4, aq_explanation_1_5: @actual_question.aq_explanation_1_5, aq_explanation_2_1: @actual_question.aq_explanation_2_1, aq_explanation_2_2: @actual_question.aq_explanation_2_2, aq_explanation_2_3: @actual_question.aq_explanation_2_3, aq_explanation_2_4: @actual_question.aq_explanation_2_4, aq_explanation_2_5: @actual_question.aq_explanation_2_5, aq_explanation_3_1: @actual_question.aq_explanation_3_1, aq_explanation_3_2: @actual_question.aq_explanation_3_2, aq_explanation_3_3: @actual_question.aq_explanation_3_3, aq_explanation_3_4: @actual_question.aq_explanation_3_4, aq_explanation_3_5: @actual_question.aq_explanation_3_5, aq_level: @actual_question.aq_level, aq_level_de1: @actual_question.aq_level_de1, aq_level_de2: @actual_question.aq_level_de2, aq_level_name: @actual_question.aq_level_name, aq_number: @actual_question.aq_number, aq_question: @actual_question.aq_question, aq_source_at: @actual_question.aq_source_at, aq_source_type: @actual_question.aq_source_type }
    assert_redirected_to actual_question_path(assigns(:actual_question))
  end

  test "should destroy actual_question" do
    assert_difference('ActualQuestion.count', -1) do
      delete :destroy, id: @actual_question
    end

    assert_redirected_to actual_questions_path
  end
end
