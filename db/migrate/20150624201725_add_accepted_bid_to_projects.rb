class AddAcceptedBidToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :accepted_bid_id, :integer
  end
end
