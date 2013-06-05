class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :fec_conc
      t.time :hora_ini
      t.time :hora_fin
      t.references :musical_group
      t.references :local
      t.references :user

      t.timestamps
    end
    add_index :concerts, :musical_group_id
    add_index :concerts, :local_id
    add_index :concerts, :user_id
  end

end
