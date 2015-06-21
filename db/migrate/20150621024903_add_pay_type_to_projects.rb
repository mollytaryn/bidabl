class AddPayTypeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pay_type, :string
  end
end
