class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.belongs_to :poll

      t.timestamps
    end
  end
end
