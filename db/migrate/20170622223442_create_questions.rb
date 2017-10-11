class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
    add_index :questions, [:user_id, :created_at]
  end
end
