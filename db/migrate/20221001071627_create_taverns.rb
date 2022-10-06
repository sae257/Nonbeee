class CreateTaverns < ActiveRecord::Migration[6.1]
  def change
    create_table :taverns do |t|
     t.integer :genre_id
     t.string :name
     t.string :title
     t.string :body
     t.integer :user_id

      t.timestamps
    end
  end
end
