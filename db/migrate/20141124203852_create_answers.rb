class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :text
      t.integer :degree_id
      t.integer :score
      t.integer :next_id

      t.timestamps
    end
  end
end
