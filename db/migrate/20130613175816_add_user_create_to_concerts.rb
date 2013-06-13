class AddUserCreateToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :user_create_id, :integer
  end
end
