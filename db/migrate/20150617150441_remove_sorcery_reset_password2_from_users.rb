class RemoveSorceryResetPassword2FromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :reset_password_token_expires_at, :datetime
  end
end
