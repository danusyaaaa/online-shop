class AddPartNumberToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :firma, :string
    add_column :products, :volume, :string
    add_column :products, :sale, :string
  end
end
