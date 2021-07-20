class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }

  validates :store_id, presence: true

  before_create :set_password

  private

  def set_password
    self.password = generate_password(8)
    # self.save
  end

  def generate_password(number)
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(number) { charset.sample }.join
  end

end
