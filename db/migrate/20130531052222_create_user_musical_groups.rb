class CreateUserMusicalGroups < ActiveRecord::Migration
  def change
    create_table :user_musical_groups do |t|
      t.integer :user_id
      t.integer :musical_group_id

      t.timestamps
    end
  end
end
