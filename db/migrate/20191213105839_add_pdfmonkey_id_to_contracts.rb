class AddPdfmonkeyIdToContracts < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :pdfmonkey_id, :string
  end
end
