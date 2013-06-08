class AddCamposToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :extension, :string
    add_column :concerts, :name, :string
  end
end
