class CreateConceptPractices < ActiveRecord::Migration
  def change
    create_table :concept_practices do |t|
      t.string :cp_number
      t.string :cp_question
      t.string :cp_answer
      t.string :cp_explanation

      t.timestamps null: false
    end
  end
end
