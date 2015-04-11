require 'test_helper'

class ConceptUnitsControllerTest < ActionController::TestCase
  setup do
    @concept_unit = concept_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:concept_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create concept_unit" do
    assert_difference('ConceptUnit.count') do
      post :create, concept_unit: { cu_concept: @concept_unit.cu_concept, cu_description: @concept_unit.cu_description, cu_explanation_1: @concept_unit.cu_explanation_1, cu_explanation_2: @concept_unit.cu_explanation_2, cu_level: @concept_unit.cu_level, cu_number: @concept_unit.cu_number, cu_reference_1: @concept_unit.cu_reference_1, cu_reference_2: @concept_unit.cu_reference_2, cu_title: @concept_unit.cu_title, exercise_blan_1: @concept_unit.exercise_blan_1, exercise_blan_2: @concept_unit.exercise_blan_2, exercise_blan_3: @concept_unit.exercise_blan_3, exercise_blpr_1: @concept_unit.exercise_blpr_1, exercise_blpr_2: @concept_unit.exercise_blpr_2, exercise_blpr_3: @concept_unit.exercise_blpr_3, exercise_rwan_1: @concept_unit.exercise_rwan_1, exercise_rwan_2: @concept_unit.exercise_rwan_2, exercise_rwpr_1: @concept_unit.exercise_rwpr_1, exercise_rwpr_2: @concept_unit.exercise_rwpr_2 }
    end

    assert_redirected_to concept_unit_path(assigns(:concept_unit))
  end

  test "should show concept_unit" do
    get :show, id: @concept_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @concept_unit
    assert_response :success
  end

  test "should update concept_unit" do
    patch :update, id: @concept_unit, concept_unit: { cu_concept: @concept_unit.cu_concept, cu_description: @concept_unit.cu_description, cu_explanation_1: @concept_unit.cu_explanation_1, cu_explanation_2: @concept_unit.cu_explanation_2, cu_level: @concept_unit.cu_level, cu_number: @concept_unit.cu_number, cu_reference_1: @concept_unit.cu_reference_1, cu_reference_2: @concept_unit.cu_reference_2, cu_title: @concept_unit.cu_title, exercise_blan_1: @concept_unit.exercise_blan_1, exercise_blan_2: @concept_unit.exercise_blan_2, exercise_blan_3: @concept_unit.exercise_blan_3, exercise_blpr_1: @concept_unit.exercise_blpr_1, exercise_blpr_2: @concept_unit.exercise_blpr_2, exercise_blpr_3: @concept_unit.exercise_blpr_3, exercise_rwan_1: @concept_unit.exercise_rwan_1, exercise_rwan_2: @concept_unit.exercise_rwan_2, exercise_rwpr_1: @concept_unit.exercise_rwpr_1, exercise_rwpr_2: @concept_unit.exercise_rwpr_2 }
    assert_redirected_to concept_unit_path(assigns(:concept_unit))
  end

  test "should destroy concept_unit" do
    assert_difference('ConceptUnit.count', -1) do
      delete :destroy, id: @concept_unit
    end

    assert_redirected_to concept_units_path
  end
end
