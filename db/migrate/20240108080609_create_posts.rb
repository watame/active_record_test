class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :description, comment: '投稿内容'
      t.references :user, null: false, foreign_key: true, comment: '投稿内容が紐づくユーザー'

      t.timestamps
    end
  end
end
