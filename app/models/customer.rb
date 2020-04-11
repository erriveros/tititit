class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders

  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true



end
