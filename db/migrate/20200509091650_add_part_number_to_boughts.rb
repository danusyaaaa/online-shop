class AddPartNumberToBoughts < ActiveRecord::Migration[5.2]
  def change
    add_column :boughts, :last_name, :string
    add_column :boughts, :username, :string
    add_column :boughts, :email, :string
  end
end
