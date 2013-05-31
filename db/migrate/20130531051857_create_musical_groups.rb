class CreateMusicalGroups < ActiveRecord::Migration
  def change
    create_table :musical_groups do |t|
      t.string :name
      t.references :music_style

      t.timestamps
    end
    add_index :musical_groups, :music_style_id
  end
end
