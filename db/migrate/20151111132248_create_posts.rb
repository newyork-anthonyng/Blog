class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :project_url
      t.string :blog_url
      t.string :category
      t.references :user
      
      t.timestamps
    end
  end
end
