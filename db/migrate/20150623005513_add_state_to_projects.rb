class AddStateToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :state, index: true, foreign_key: true
  end
end
