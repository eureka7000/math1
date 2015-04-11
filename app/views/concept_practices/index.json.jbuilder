json.array!(@concept_practices) do |concept_practice|
  json.extract! concept_practice, :id, :cp_number, :cp_question, :cp_answer, :cp_explanation
  json.url concept_practice_url(concept_practice, format: :json)
end
