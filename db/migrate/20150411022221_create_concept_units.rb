class CreateConceptUnits < ActiveRecord::Migration
  def change
    create_table :concept_units do |t|
      t.string :cu_number
      t.string :cu_title
      t.text :cu_description
      t.string :cu_level
      t.string :cu_concept
      t.string :cu_explanation_1
      t.string :cu_explanation_2
      t.string :cu_reference_1
      t.string :cu_reference_2
      t.string :exercise_blpr_1
      t.string :exercise_blan_1
      t.string :exercise_blpr_2
      t.string :exercise_blan_2
      t.string :exercise_blpr_3
      t.string :exercise_blan_3
      t.string :exercise_rwpr_1
      t.string :exercise_rwan_1
      t.string :exercise_rwpr_2
      t.string :exercise_rwan_2

      t.timestamps null: false
    end
  end
end
