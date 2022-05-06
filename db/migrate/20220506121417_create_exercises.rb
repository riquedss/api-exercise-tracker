class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :description
      t.integer :duration
      t.date :date

      t.timestamps
    end
  end
end
