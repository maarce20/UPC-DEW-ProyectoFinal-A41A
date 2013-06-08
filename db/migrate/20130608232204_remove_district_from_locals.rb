class RemoveDistrictFromLocals < ActiveRecord::Migration
  def up
    remove_column :locals, :district
  end

  def down
    add_column :locals, :district, :string
  end
end
