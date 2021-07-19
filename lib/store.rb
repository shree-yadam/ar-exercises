class Store < ActiveRecord::Base

  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, presence: true
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0,  only_integer: true }

end
