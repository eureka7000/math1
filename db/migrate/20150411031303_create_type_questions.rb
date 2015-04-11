class CreateTypeQuestions < ActiveRecord::Migration
  def change
    create_table :type_questions do |t|
      t.string :tq_number
      t.string :tq_question
      t.string :tq_level
      t.string :tq_answer
      t.string :tq_explanation_1
      t.string :tq_explanation_2
      t.string :tq_related_concept_1
      t.string :tq_related_concept_2
      t.string :tq_related_concept_3
      t.string :tq_related_concept_4
      t.string :tq_type_number
      t.string :tq_type_title

      t.timestamps null: false
    end
  end
end
