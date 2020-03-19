class AddSeveralColumnstoClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :first_name, :string
    add_column :clients, :last_name, :string
    add_column :clients, :age, :integer
    add_column :clients, :stripe_id, :string
    add_column :clients, :card_brand, :string
    add_column :clients, :card_last4, :string
    add_column :clients, :card_exp_month, :string
    add_column :clients, :card_exp_year, :string
    add_column :clients, :expires_at, :datetime
  end
end
