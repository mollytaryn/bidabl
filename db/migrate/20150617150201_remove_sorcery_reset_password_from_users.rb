class RemoveSorceryResetPasswordFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :reset_password_token, :string
  end
end
