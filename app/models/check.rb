class Check < ApplicationRecord
  belongs_to :account
  belongs_to :user

  monetize :amount_cents, numericality: true
end
