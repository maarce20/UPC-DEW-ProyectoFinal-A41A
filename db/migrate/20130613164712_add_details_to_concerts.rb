class AddDetailsToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :details, :text
  end
end
