class AddCommentsForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key(:projects, :comments, column: :accepted_bid_id)
  end
end
