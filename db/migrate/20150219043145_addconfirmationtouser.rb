class Addconfirmationtouser < ActiveRecord::Migration
  def change
    ## Confirmable
        add_column :users, :confirmation_token, :string
        add_column :users, :confirmed_at, :datetime
        add_column :users, :confirmation_sent_at, :datetime
        execute("UPDATE users SET confirmed_at = NOW()")
  end
end
