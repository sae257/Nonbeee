class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      
      t.string :title
      t.string :body
      t.string :genre_id

      t.timestamps
    end
  end
end