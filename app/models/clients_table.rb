class ClientsTable < ApplicationRecord
  belongs_to :client
  belongs_to :table
end
