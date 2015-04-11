json.array!(@type_questions) do |type_question|
  json.extract! type_question, :id, :tq_number, :tq_question, :tq_level, :tq_answer, :tq_explanation_1, :tq_explanation_2, :tq_related_concept_1, :tq_related_concept_2, :tq_related_concept_3, :tq_related_concept_4, :tq_type_number, :tq_type_title
  json.url type_question_url(type_question, format: :json)
end
