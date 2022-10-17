class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|

      t.string :title
      t.string :body
      t.integer :genre_id
      t.integer :bar_id

      t.timestamps
    end
  end
end
