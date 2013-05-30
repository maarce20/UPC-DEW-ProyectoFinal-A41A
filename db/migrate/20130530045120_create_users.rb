class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type_person
      t.string :name_user
      t.string :primary_last_name
      t.string :second_last_name
      t.string :sex
      t.string :type_document
      t.integer :number_document
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
