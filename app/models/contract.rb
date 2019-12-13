class Contract < ApplicationRecord
  DOCUMENT_TEMPLATE_ID = '...'

  after_commit :generate_pdf

  private

  def generate_pdf
    return if previous_changes.key?('pdfmonkey_id')

    dynamic_data = attributes.slice('client_name', 'client_address', 'service_fee')
    pdfmonkey_doc = Pdfmonkey::Document.generate!(DOCUMENT_TEMPLATE_ID, dynamic_data)

    if pdfmonkey_doc.status == 'success'
      update(pdfmonkey_id: pdfmonkey_doc.id)
    else
      Rails.logger.error "Failed to create a PDF for Contract with id '#{id}'"
    end
  end
end
