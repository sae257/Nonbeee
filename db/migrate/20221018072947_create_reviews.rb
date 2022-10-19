class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :post
      t.integer :user_id
      t.integer :bar_id
      t.float :star, null: false, default: 0

      t.timestamps
    end
  end
end
