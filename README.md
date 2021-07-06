# Generate PDF Files using PDFMonkey with Ruby on Rails

## What is PDFMonkey?

Automate your PDF generation. Get the job done.

Manage your templates. Insert dynamic data. Call a simple REST API.
Get 300 free PDF a month.

Developers writing code to build PDF is a waste of time. Break the circle!

[Create you free account today!][pdfmonkey]

## Integration with Ruby on Rails

This repository shows how to generate PDF files using PDFMonkey in a Ruby on Rails application.

You can inspect [the last commit][last_commit] to see the specific code changes that were made to:

* generate a PDF when a record is created or updated
* download a PDF when a link is clicked

You can inspect the following files to see the importants bits:

* The [Contract model][contract_model]
* The [ContractDocuments controller][contract_documents_controller]
* The [Index view][index_view]

[contract_documents_controller]: /app/controllers/contract_documents_controller.rb
[contract_model]: /app/models/contract.rb
[index_view]: /app/views/contracts/index.html.erb#L22-L24
[last_commit]: https://github.com/pdfmonkey/pdfmonkey-on-rails/commit/HEAD
[pdfmonkey]: https://www.pdfmonkey.io?utm_source=github&utm_medium=demo-app&utm_campaign=rails
