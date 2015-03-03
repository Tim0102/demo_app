class CreateMiniPosts < ActiveRecord::Migration
  def change
    create_table :mini_posts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
