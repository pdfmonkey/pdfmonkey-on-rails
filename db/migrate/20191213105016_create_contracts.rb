class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :client_name
      t.string :client_address
      t.integer :service_fee

      t.timestamps
    end
  end
end
