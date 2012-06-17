class CreateForumQuestions < ActiveRecord::Migration
  def change
    create_table :forum_questions do |t|
      t.text :title

      t.timestamps
    end
  end
end
