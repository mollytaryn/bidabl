class AddPayToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pay, :integer
  end
end
