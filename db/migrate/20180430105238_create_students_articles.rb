class CreateStudentsArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :students_articles do |t|
      t.integer :blog_id
      t.integer :user_id
      t.integer :date
      t.text :blog_text
      t.string :blog_title
      t.string :user_img
      t.string :blog_link
      t.string :blog_img
      t.string :blog_upload

      t.timestamps
    end
  end
end
