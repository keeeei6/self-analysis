class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :answer,          null: false
      t.references :question
      t.references :user,      foreign_key: true
      t.timestamps
    end
  end
end
