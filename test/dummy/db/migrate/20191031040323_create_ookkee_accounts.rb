class CreateOokkeeAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :ookkee_accounts do |t|
      t.string :name
      t.string :sheet_name # assets, liability, etc

      t.timestamps
    end

    add_index :ookkee_accounts, :sheet_name
    add_index :ookkee_accounts, [:name, :sheet_name], unique: true
  end
end
