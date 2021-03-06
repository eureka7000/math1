json.array!(@actual_questions) do |actual_question|
  json.extract! actual_question, :id, :aq_number, :aq_question, :aq_level, :aq_level_name, :aq_level_de1, :aq_level_de2, :aq_explanation_1_1, :aq_explanation_1_2, :aq_explanation_1_3, :aq_explanation_1_4, :aq_explanation_1_5, :aq_explanation_2_1, :aq_explanation_2_2, :aq_explanation_2_3, :aq_explanation_2_4, :aq_explanation_2_5, :aq_explanation_3_1, :aq_explanation_3_2, :aq_explanation_3_3, :aq_explanation_3_4, :aq_explanation_3_5, :aq_source_type, :aq_source_at
  json.url actual_question_url(actual_question, format: :json)
end
