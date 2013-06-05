class AddConfirmationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email_confirmation, :string
    add_column :users, :password_confirmation, :string
  end
end
