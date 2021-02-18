class Account < ApplicationRecord
  belongs_to :user
  has_many :checks

  validates :name, :bank, presence: true

  monetize :starting_balance_cents, numericality: true

  def balance
    starting_balance - checks_total
  end

  def checks_total
    Money.new(checks.sum(:amount_cents))
  end

  def credits_total
    Money.new(0)
  end
end
