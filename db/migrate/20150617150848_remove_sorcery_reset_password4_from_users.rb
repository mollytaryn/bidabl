class RemoveSorceryResetPassword4FromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :reset_password_email_sent_at, :datetime
  end
end
