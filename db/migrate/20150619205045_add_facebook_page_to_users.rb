class AddFacebookPageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :facebook_page, :string
  end
end
