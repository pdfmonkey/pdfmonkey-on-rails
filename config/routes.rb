Rails.application.routes.draw do
  resources :contracts
  resources :contract_documents, only: :show
  root to: 'contracts#index'
end
