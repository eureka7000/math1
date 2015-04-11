class CreateActualQuestions < ActiveRecord::Migration
  def change
    create_table :actual_questions do |t|
      t.string :aq_number
      t.string :aq_question
      t.string :aq_level
      t.string :aq_level_name
      t.string :aq_level_de1
      t.string :aq_level_de2
      t.string :aq_explanation_1_1
      t.string :aq_explanation_1_2
      t.string :aq_explanation_1_3
      t.string :aq_explanation_1_4
      t.string :aq_explanation_1_5
      t.string :aq_explanation_2_1
      t.string :aq_explanation_2_2
      t.string :aq_explanation_2_3
      t.string :aq_explanation_2_4
      t.string :aq_explanation_2_5
      t.string :aq_explanation_3_1
      t.string :aq_explanation_3_2
      t.string :aq_explanation_3_3
      t.string :aq_explanation_3_4
      t.string :aq_explanation_3_5
      t.string :aq_source_type
      t.string :aq_source_at

      t.timestamps null: false
    end
  end
end
