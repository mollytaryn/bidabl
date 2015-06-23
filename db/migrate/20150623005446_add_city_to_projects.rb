class AddCityToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :city, index: true, foreign_key: true
  end
end
