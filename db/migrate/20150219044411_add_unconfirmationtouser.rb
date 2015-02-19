class AddUnconfirmationtouser < ActiveRecord::Migration
  def change
    add_column :users, :unconfirmed_email, :string
        execute("UPDATE users SET confirmed_at = NOW()")
  end
end
