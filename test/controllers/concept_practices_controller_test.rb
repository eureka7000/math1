require 'test_helper'

class ConceptPracticesControllerTest < ActionController::TestCase
  setup do
    @concept_practice = concept_practices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concept_practices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concept_practice" do
    assert_difference('ConceptPractice.count') do
      post :create, concept_practice: { cp_answer: @concept_practice.cp_answer, cp_explanation: @concept_practice.cp_explanation, cp_number: @concept_practice.cp_number, cp_question: @concept_practice.cp_question }
    end

    assert_redirected_to concept_practice_path(assigns(:concept_practice))
  end

  test "should show concept_practice" do
    get :show, id: @concept_practice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concept_practice
    assert_response :success
  end

  test "should update concept_practice" do
    patch :update, id: @concept_practice, concept_practice: { cp_answer: @concept_practice.cp_answer, cp_explanation: @concept_practice.cp_explanation, cp_number: @concept_practice.cp_number, cp_question: @concept_practice.cp_question }
    assert_redirected_to concept_practice_path(assigns(:concept_practice))
  end

  test "should destroy concept_practice" do
    assert_difference('ConceptPractice.count', -1) do
      delete :destroy, id: @concept_practice
    end

    assert_redirected_to concept_practices_path
  end
end
