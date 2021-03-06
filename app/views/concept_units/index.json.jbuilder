json.array!(@concept_units) do |concept_unit|
  json.extract! concept_unit, :id, :cu_number, :cu_title, :cu_description, :cu_level, :cu_concept, :cu_explanation_1, :cu_explanation_2, :cu_reference_1, :cu_reference_2, :exercise_blpr_1, :exercise_blan_1, :exercise_blpr_2, :exercise_blan_2, :exercise_blpr_3, :exercise_blan_3, :exercise_rwpr_1, :exercise_rwan_1, :exercise_rwpr_2, :exercise_rwan_2
  json.url concept_unit_url(concept_unit, format: :json)
end
