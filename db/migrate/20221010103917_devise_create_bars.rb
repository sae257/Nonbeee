# frozen_string_literal: true

class DeviseCreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at
      t.string :bar_name, null: false
      t.string :address, null: false
      t.string :bar_tel, null: false
      t.string :post_code, null: false
      t.boolean :is_deleted, null: false, default: false

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :bars, :email,                unique: true
    add_index :bars, :reset_password_token, unique: true
    # add_index :bars, :confirmation_token,   unique: true
    # add_index :bars, :unlock_token,         unique: true
  end
end